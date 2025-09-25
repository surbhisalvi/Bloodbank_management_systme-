<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="whyDonot.aspx.cs" Inherits="whyDonot" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
           <style>
       /* Hero Section */
       .hero {
           background: url('images/blood-donation.jpg') no-repeat center center;
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
       }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Hero -->
    <div class="hero">
        <h1>Why Donate Blood?</h1>
        <p>One pint of blood can save up to three lives. Your donation matters.</p>
    </div>

    <!-- Life-Saving Impact -->
    <div class="section">
        <h2>Life-Saving Impact</h2>
        <p>Blood donations are vital for surgeries, trauma care, cancer treatment, childbirth complications, and many other medical needs. 
        Every donation makes a difference and can be the reason someone lives another day.</p>
    </div>

    <!-- Who Can Donate -->
    <div class="section">
        <h2>Who Can Donate?</h2>
        <ul>
            <li>Healthy adults aged <strong>19 years or older</strong> (as per rules).</li>
            <li>Minimum weight and hemoglobin must meet donation requirements.</li>
            <li>No recent infections, surgeries, or conditions that may risk donor or recipient safety.</li>
        </ul>
    </div>

    <!-- Donation Process -->
    <div class="section">
        <h2>What to Expect</h2>
        <ol>
            <li>Registration and a brief health screening.</li>
            <li>Quick physical check (blood pressure, pulse, hemoglobin).</li>
            <li>Donation takes about 8–12 minutes.</li>
            <li>Refreshments and rest after donating.</li>
        </ol>
    </div>

    <!-- Myths -->
    <div class="section">
        <h2>Common Myths</h2>
        <dl>
            <dt><strong>Myth:</strong> Donating blood is painful.</dt>
            <dd><strong>Fact:</strong> You only feel a small prick, and most donors describe it as minor.</dd>
            <dt><strong>Myth:</strong> Blood donation makes you weak.</dt>
            <dd><strong>Fact:</strong> You recover quickly with fluids and rest; you can resume normal activities soon.</dd>
            <dt><strong>Myth:</strong> You can catch diseases from donating.</dt>
            <dd><strong>Fact:</strong> Donations are completely safe; only sterile, single-use needles are used.</dd>
        </dl>
    </div>

    <!-- Call to Action -->
    <div class="cta">
        <h2>Ready to Save Lives?</h2>
        <p>Your small act of kindness can save someone’s life today.</p>
        <a href="Donor.aspx" class="btn">Register as Donor</a>
    </div>
</asp:Content>

