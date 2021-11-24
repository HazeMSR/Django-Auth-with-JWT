from django.test import TestCase
from .models import *

class JobModelTests(TestCase):
	def test_job_name(self):
		new_job = Job(name='My job')
		print(new_job)
		self.assertIs(str(new_job), 'My job')