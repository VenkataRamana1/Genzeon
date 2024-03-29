<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	isELIgnored="false" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Genzeon Talent acquisition</title>
<link href="<%=request.getContextPath()%>/resources/resources.css"
	rel="stylesheet" />
<link href="addResource.css" rel="stylesheet" />
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<style>
#customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#customers td, #customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

#customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

#customers tr:hover {
	background-color: #ddd;
}

#customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}
</style>
</head>
<body>


	<div class="container">
		<div class="row header" style="text-align: center; margin-top: 10px">
			<h1>Resource Details &nbsp;</h1>

		</div>
		<hr />
		<div class="row body">
			<form name="add_resource" method="POST"
				action="#"
				enctype="multipart/form-data">
				<ul>
					<li>
						<p class="left">
							<label for="first_name">Select a Job Code:&nbsp; <span
								class="req">*</span></label> <select
								style="margin: 0 0 0.5em 0; padding: 6px 10px; border-radius: 25px; border: 2px solid #006400; padding: 14px; width: 200px; color: black"
								name="jobCode">
									<option  selected="selected" value="${resourcevo.jobCode}">${resourcevo.jobCode}</option> 
							</select>
						</p>
					</li>
					<li>
						<p class="left">
							<label for="first_name">First Name <span class="req">*</span></label>
							<input type="text" name="firstName" class="input-text"
								value="${resourcevo.firstName}" placeholder="Please enter your first name" />
						</p>
						<p class="pull-right">
							<label for="middleName">Middle Name </label> <input type="text"
								name="middleName" value="${resourcevo.middleName}" class="input-text"
								placeholder="Please enter your Middle name" />
						</p>
					</li>


					<li>
						<p>
							<label for="last_name">Last Name <span class="req">*</span></label>
							<input type="text" name="lastName" class="input-text"
								value="${resourcevo.lastName}" placeholder="mPlease enter your last name" />
						</p>
						<p class="pull-right">
							<label for="email">Email <span class="req">*</span></label> <input
								type="email" name="emailId" value="${resourcevo.emailId}"
								class="input-text" placeholder="XYZ@gmail.com" />

						</p>
					</li>

					<li>

						<p>
							<label for="phoneNumber">Phone Number </label> <input type="text"
								name="phone" value="${resourcevo.phone}" class="input-text"
								placeholder="0123456789" />
						</p>


						<p class="pull-right">
							<label for="technology">Technology <span class="req">*</span></label>
							<input type="text" name="technology" value="${resourcevo.technology}"
								class="input-text" placeholder="Java,Tibco" />
						</p>

					</li>
					<li>
						<p>
							<label for="noticePeriod">Notice Period</label> <input
								type="text" name="noticePeriod" value="${resourcevo.noticePeriod}"
								class="input-text" placeholder="In No of months" />

						</p>
						<p class="pull-right">
							<label for="experienceLevel">Experience</label> <input
								type="text" name="experienceLevel" value="${resourcevo.experienceLevel}"
								class="input-text" placeholder="Years of experience" />
						</p>

					</li>
					<li>
						<p>
							<label for="currentSalary">Current Salary</label> <input
								type="text" name="currentSalary" value="${resourcevo.currentSalary}"
								class="input-text" placeholder="Current Salary in INR" />
						</p>
						<p class="pull-right">
							<label for="expectedSalary">Expected Salary</label> <input
								type="text" name="expectedSalary" value="${resourcevo.expectedSalary}"
								class="input-text" placeholder="Salary Expected in INR" />
						</p>

					</li>
					<li>
						<p>
							<label for="finalStatus">Status <span class="req">*</span></label>
							<input type="text" name="finalStatus" value="${resourcevo.finalStatus}"
								placeholder="Status" class="input-text" />
						</p>
						<p class="pull-right" style="padding-top: 20px">
							<label for="resume">
							<a href="${resourcevo.resumePath}" style="padding-left: 10px" >Resume<i class="material-icons">&#xe2c7;</i></a></label> 
						</p>
						<p class="pull-right" style="padding-top: 20px">
						<a href="<%=request.getContextPath()%>/addInterviewer/${resourcevo.jobCode}">Add interviewer</a>&nbsp; 
						</p>


					</li>
						<table id="customers">

				<thead>

					<tr>

						<th>JobCode</th>

						<th>InterviewId</th>

						<th>ResourceId</th>

						<th>Round</th>

						<th>InterviewedBy</th>

						<th>FinalStatus</th>
						<th></th>
					</tr>

				</thead>

				<tbody>

					<c:forEach var="inteview" items="${inteviewers}">

						<tr>

							<td>${inteview.jobCode}</td>

							<td>${inteview.interviewId}</td>

							<td>${InterviewId.resourceId}</td>

							<td>${InterviewId.round}</td>
							<td>${InterviewId.interviewedBy}</td>
							<td>${InterviewId.status}</td>


						</tr>

					</c:forEach>

				</tbody>

			</table>

					<li><div class="divider"></div></li>

				</ul>

			</form>
		</div>
	</div>
</body>
</html>