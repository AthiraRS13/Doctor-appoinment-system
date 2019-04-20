from django.shortcuts import render, redirect
from django.http import HttpResponse
from django.conf import settings
from django.db.models import Q
from django.core.files.storage import FileSystemStorage
from .models import appointment
from django.contrib import messages
from django.db import connection

# Create your views here.

def listing(request, doctorId = "0"):
    cursor = connection.cursor()
    if (doctorId == "0"):
        cursor.execute("SELECT * FROM appointments_appointment, users_user, appointments_status WHERE user_id = appointment_patient_id AND appointment_status = as_id")
    else:
        cursor.execute("SELECT * FROM appointments_appointment, users_user, appointments_status WHERE user_id = appointment_patient_id AND appointment_status = as_id AND appointment_doctor_id = "+doctorId)
    appointmentlist = dictfetchall(cursor)
   
    context = {
        "appointmentlist": appointmentlist
    }
   
    # Message according appointments Role #
    context['heading'] = "Appointments Report";
    return render(request,'appointment-report.html',context)

def getDropDown(table, condtion):
    cursor = connection.cursor()    
    cursor.execute("SELECT * FROM "+table+" WHERE "+condtion)
    dropdownList = dictfetchall(cursor)
    return dropdownList;

def add(request):
    context = {
    "fn":"add",
    "patientlist":getDropDown('users_user','user_level_id = 4'),
    "doctorlist":getDropDown('users_user','user_level_id = 3'),
    "timeslots":getDropDown('appointments_timeslot','1'),
    "statusList":getDropDown('appointments_status','1'),
    "heading":'Patient Appointments'
    }
    if (request.method == "POST"):
        try:
            addAppointment = appointment(appointment_patient_id = request.POST['appointment_patient_id'],
            appointment_doctor_id = request.POST['appointment_doctor_id'],
            appointment_timeslot_id = request.POST['appointment_timeslot_id'],
            appointment_date = request.POST['appointment_date'],
            appointment_fees = request.POST['appointment_fees'],
            appointment_contact = request.POST['appointment_contact'],
            appointment_address = request.POST['appointment_address'],
            appointment_status = request.POST['appointment_status'],
            appointment_description = request.POST['appointment_description'])
            addAppointment.save()
        except Exception, e:
            return HttpResponse('Something went wrong. Error Message : '+ str(e))

        return redirect('listing')

    else:
        return render(request,'appointment.html', context)

def update(request, appointmentId):
    context = {
    "fn":"update",
    "patientlist":getDropDown('users_user','user_level_id = 4'),
    "doctorlist":getDropDown('users_user','user_level_id = 3'),
    "timeslots":getDropDown('appointments_timeslot','1'),
    "statusList":getDropDown('appointments_status','1'),
    "heading":'Patient Appointments',
    "appointmentdetails":appointment.objects.get(appointment_id = appointmentId)
    }
    if (request.method == "POST"):
        try:
            addAppointment = appointment(
            appointment_id = appointmentId,    
            appointment_patient_id = request.POST['appointment_patient_id'],
            appointment_doctor_id = request.POST['appointment_doctor_id'],
            appointment_timeslot_id = request.POST['appointment_timeslot_id'],
            appointment_date = request.POST['appointment_date'],
            appointment_fees = request.POST['appointment_fees'],
            appointment_contact = request.POST['appointment_contact'],
            appointment_address = request.POST['appointment_address'],
            appointment_status = request.POST['appointment_status'],
            appointment_description = request.POST['appointment_description'])
            addAppointment.save()
        except Exception, e:
            return HttpResponse('Something went wrong. Error Message : '+ str(e))

        context["appointmentdetails"] = appointment.objects.get(appointment_id = appointmentId)
        messages.add_message(request, messages.INFO, "Appointment updated succesfully !!!")
        return redirect('/appointments/')

    else:
        return render(request,'appointment.html', context)


def dictfetchall(cursor):
    "Return all rows from a cursor as a dict"
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]

def delete(request, appointmentId):
    try:
        deleteAppointment = appointment.objects.get(appointment_id = appointmentId)
        deleteAppointment.delete()
    except Exception, e:
        return HttpResponse('Something went wrong. Error Message : '+ str(e))
    messages.add_message(request, messages.INFO, "Appointment Deleted Successfully !!!")
    return redirect('listing')
