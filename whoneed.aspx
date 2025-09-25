<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="whoneed.aspx.cs" Inherits="whoneed" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .hero {
            text-align: center;
            padding: 40px 20px;
            background: #eaf6ff;
            border-radius: 8px;
            margin-bottom: 20px;
        }
        .hero h1 {
            color: #004080;
            font-size: 32px;
            margin-bottom: 10px;
        }
        .hero p {
            font-size: 18px;
            color: #444;
        }
        .section {
            margin: 30px 0;
        }
        .section h2 {
            color: #004080;
            margin-bottom: 10px;
        }
        .section p, .section ul {
            font-size: 16px;
            line-height: 1.6;
            color: #333;
        }
        .section ul {
            margin-left: 20px;
            list-style: disc;
        }
        .cta {
            text-align: center;
            background: #f0f8ff;
            padding: 20px;
            border-radius: 8px;
            margin-top: 30px;
        }
        .btn {
            display: inline-block;
            background: #004080;
            color: #fff;
            padding: 10px 18px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: bold;
        }
        .btn:hover {
            background: #00264d;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero -->
    <div class="hero">
        <h1>Who Needs Blood?</h1>
        <p>Every day, thousands of patients rely on donated blood to survive.</p>
    </div>

    <!-- Emergency & Accidents -->
    <div class="section">
        <h2>Accident & Emergency Patients</h2>
        <p>Victims of road accidents, burns, and natural disasters often need urgent blood transfusions to replace lost blood and save their lives.</p>
    </div>

    <!-- Surgical & Medical Needs -->
    <div class="section">
        <h2>Surgical & Medical Patients</h2>
        <ul>
            <li>Patients undergoing major surgeries, organ transplants, and heart operations.</li>
            <li>Women with complications during pregnancy and childbirth.</li>
            <li>Cancer patients who need blood during chemotherapy treatments.</li>
        </ul>
    </div>

    <!-- Chronic Illness -->
    <div class="section">
        <h2>Chronic Illness Patients</h2>
        <p>People with blood disorders like thalassemia, sickle cell anemia, and severe anemia require regular transfusions to live healthy lives.</p>
    </div>

    <!-- Children & Elderly -->
    <div class="section">
        <h2>Children & Elderly</h2>
        <p>Children born with medical conditions and elderly patients with weakened immunity often rely on blood transfusions during treatment.</p>
    </div>

    <!-- Call to Action -->
    <div class="cta">
        <h2>You Can Make a Difference</h2>
        <p>Every donation ensures that blood is available when patients need it most.</p>
        <a href="Donor.aspx" class="btn">Become a Donor</a>
    </div>
</asp:Content>

