<%@ Page Title="Home" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        /* Hero Section */
        .hero {
            background: url('images/blood-donation.jpg') no-repeat center center/cover;
            height: 70vh;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #b30000;
            text-align: center;
            padding: 20px;
        }
        .hero h1 { font-size: 48px; margin-bottom: 15px; }
        .hero p { font-size: 20px; margin-bottom: 25px; }
        .btn {
            display:inline-block;
            padding:12px 25px;
            margin:5px;
            background:#b30000;
            color:#fff;
            text-decoration:none;
            border-radius:6px;
            font-weight:bold;
            transition:0.3s;
        }
        .btn.secondary { background:#333; }
        .btn:hover { background:#800000; }

        /* Info Section */
        .info {
            display:grid;
            grid-template-columns: repeat(3,1fr);
            gap:20px;
            padding:40px;
            text-align:center;
        }
        .card {
            background:#fff;
            padding:20px;
            border-radius:8px;
            box-shadow:0 2px 8px rgba(0,0,0,0.1);
            transition:0.3s;
        }
        .card:hover { transform:translateY(-5px); }
        .card h2 { color:#b30000; margin-bottom:10px; }
        .card p { margin-bottom:15px; }
        .card a { color:#b30000; font-weight:bold; text-decoration:none; }
        .card a:hover { text-decoration:underline; }

        /* Responsive */
        @media (max-width:900px){
            .info { grid-template-columns:1fr 1fr; }
        }
        @media (max-width:600px){
            .info { grid-template-columns:1fr; }
            .hero h1 { font-size:32px; }
            .hero p { font-size:16px; }
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero Section -->
    <section class="hero">
        <div>
            <h1>Donate Blood, Save Lives</h1>
            <p>Your contribution can give someone another chance at life.</p>
            <a href="Donor.aspx" class="btn">Become a Donor</a>
            <a href="Acceptor_Request.aspx" class="btn secondary">Request Blood</a>
        </div>
    </section>

    <!-- Info Section -->
    <section class="info">
        <div class="card">
            <h2>Why Donate Blood?</h2>
            <p>Every donation can save up to 3 lives. Be a real-life hero today.</p>
            <a href="whyDonate.aspx">Learn More →</a>
        </div>
        <div class="card">
            <h2>Who Needs Blood?</h2>
            <p>Accident victims, surgery patients, and cancer warriors need your help.</p>
            <a href="whoNeed.aspx">Learn More →</a>
        </div>
        <div class="card">
            <h2>Emergency Contacts</h2>
            <p>Hospitals, Blood Banks & Ambulance numbers at your fingertips.</p>
            <a href="Contact.aspx">View Contacts →</a>
        </div>
    </section>
</asp:Content>
