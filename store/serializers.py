from rest_framework import serializers
from .models import *
from django.utils.text import gettext_lazy as _
from rest_framework import serializers

class StoreSerializer(serializers.ModelSerializer):
    employees = serializers.StringRelatedField(many=True, read_only=True)
    class Meta:
        model = Store
        fields = ['id','name','address','owner', 'employees']

class JobSerializer(serializers.ModelSerializer):
    class Meta:
        model = Job
        fields = ['id','name']

class AddressSerializer(serializers.ModelSerializer):
    class Meta:
        model = Address
        fields = ['id','name','state','ext_number','int_number']

class Address2Serializer(serializers.ModelSerializer):
    class Meta:
        model = Address
        fields = ['name','ext_number']

class EmployeeSerializer(serializers.ModelSerializer):
    job = JobSerializer(many=True, read_only=True)
    home_address = Address2Serializer()
    class Meta:
        model = Employee
        # fields = ['id','name','age','last_grade']
        fields = ['id','name','age','last_grade','branch','job','home_address']

    '''    
    def create(self, validated_data):
        jobs_data = validated_data.pop('jobs')
        album = Employee.objects.create(**validated_data)
        for track_data in tracks_data:
            Job.objects.create(album=album, **job_data)
        return employee
    '''