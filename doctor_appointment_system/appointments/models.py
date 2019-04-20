# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models


# Create your models here.

class appointment(models.Model):
    appointment_id = models.AutoField(primary_key=True)
    appointment_patient_id = models.CharField(max_length=255, default = '2')
    appointment_doctor_id = models.CharField(max_length=255, default = "", unique=True)
    appointment_timeslot_id = models.CharField(max_length=20, default = "")
    appointment_date = models.CharField(max_length=255, default = "")
    appointment_fees = models.EmailField(max_length=255, default = "")
    appointment_contact = models.CharField(max_length=255, default = "")
    appointment_address = models.CharField(max_length=10, default = "")
    appointment_status = models.CharField(max_length=255, default = "")
    appointment_description = models.TextField(default = "")
    def __str__(self):
        return self.appointment_id