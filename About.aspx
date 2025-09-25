<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .about-container {
            max-width: 900px;
            margin: 40px auto;
            background: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.1);
            line-height: 1.8;
        }
        .about-container h1 {
            color: #b30000;
            margin-bottom: 20px;
            text-align: center;
        }
        .about-container h2 {
            margin-top: 25px;
            color: #800000;
        }
        .feedback {
            margin-top: 30px;
            padding: 20px;
            background: #f9f9f9;
            border-left: 5px solid #b30000;
            border-radius: 6px;
        }
        .feedback p {
            font-style: italic;
            margin-bottom: 10px;
        }
        .feedback .author {
            font-weight: bold;
            color: #444;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="about-container">
        <h1>About Our Blood Bank</h1>

        <p>
            The <b>Blood Bank Management System</b> is a dedicated platform built to save lives by
            ensuring the timely availability of safe blood. We connect voluntary donors with patients
            in urgent need and maintain secure, accurate records of donations and requests.
        </p>

        <h2>Our Mission</h2>
        <p>
            To encourage voluntary blood donation and ensure that no patient suffers due to a lack
            of blood availability. We strive for transparency, efficiency, and compassion in every
            service we provide.
        </p>

        <h2>Our Vision</h2>
        <p>
            A healthier world where safe blood is available anytime, anywhere for anyone who needs it.
        </p>

        <h2>Why Choose Us?</h2>
        <ul>
            <li>24/7 accessibility to donor and recipient records.</li>
            <li>Strict quality and safety measures.</li>
            <li>Easy registration for donors and quick request handling for patients.</li>
            <li>Experienced medical staff and advanced technology.</li>
        </ul>

        <!-- Feedback Section -->
        <h2>Feedback from Our Donors and Recipients</h2>

        <div class="feedback">
            <p>"I have been donating blood through this system for 5 years. It feels good to know
               that my small contribution can save someone’s life."</p>
            <div class="author">– Mr. Ramesh Sharma, Age 65 (Donor)</div>
        </div>

        <div class="feedback">
            <p>"During an emergency, we were able to get the required blood group within hours.
               This platform truly saves lives."</p>
            <div class="author">– Mrs. Sushma Patel, Age 70 (Patient’s Family)</div>
        </div>

        <div class="feedback">
            <p>"The staff guided me throughout the donation process. At my age, I was hesitant,
               but their support made everything easy and safe."</p>
            <div class="author">– Mr. Abdul Khan, Age 68 (Donor)</div>
        </div>
    </div>
</asp:Content>

