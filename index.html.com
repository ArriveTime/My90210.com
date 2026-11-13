
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>My90210.com | The Beverly Hills Lifestyle, Directory & City Guide</title>
<meta name="description" content="Your complete guide to Beverly Hills, California. Discover Rodeo Drive shopping, fine dining, cosmetic surgery, hair restoration, real estate, salons, local news, weather and more.">
<meta name="keywords" content="Beverly Hills, 90210, Rodeo Drive, Beverly Hills shopping, restaurants, cosmetic surgery, hair restoration, real estate, salons, luxury lifestyle">
<meta name="author" content="My90210.com">
<meta property="og:title" content="My90210.com | Beverly Hills">
<meta property="og:description" content="Everything Beverly Hills. One destination.">
<meta property="og:type" content="website">
<meta name="theme-color" content="#101010">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;600;700&family=Playfair+Display:wght@500;600;700&display=swap" rel="stylesheet">

<style>
:root {
  --black:#101010;
  --dark:#171717;
  --gold:#c8a96a;
  --gold2:#e6d2a5;
  --cream:#f7f4ee;
  --white:#fff;
  --muted:#a9a39a;
  --line:rgba(200,169,106,.25);
}
*{box-sizing:border-box}
html{scroll-behavior:smooth}
body{
  margin:0;background:var(--cream);color:#202020;
  font-family:'DM Sans',Arial,sans-serif;
}
a{color:inherit}
button,input{font:inherit}
.topbar{
  background:#090909;color:#e9e0cf;text-align:center;
  padding:9px 15px;font-size:12px;letter-spacing:2px;
}
header{
  background:rgba(16,16,16,.98);color:white;
  position:sticky;top:0;z-index:50;border-bottom:1px solid var(--line);
}
.nav{
  max-width:1400px;margin:auto;padding:17px 5%;
  display:flex;align-items:center;justify-content:space-between;gap:20px;
}
.logo{
  color:var(--gold);font-family:'Playfair Display',serif;
  font-size:30px;font-weight:700;letter-spacing:1px;text-decoration:none;
  white-space:nowrap;
}
.logo span{color:white}
nav{display:flex;gap:20px;flex-wrap:wrap;justify-content:flex-end}
nav a{
  color:#eee;text-decoration:none;font-size:12px;
  text-transform:uppercase;letter-spacing:1px;
}
nav a:hover{color:var(--gold)}
.hero{
  min-height:620px;display:flex;align-items:center;justify-content:center;
  text-align:center;color:white;padding:80px 20px;
  background:
  linear-gradient(90deg,rgba(0,0,0,.65),rgba(0,0,0,.27),rgba(0,0,0,.65)),
  url('https://images.unsplash.com/photo-1519501025264-65ba15a82390?auto=format&fit=crop&w=2200&q=90') center/cover;
}
.hero-content{max-width:900px}
.eyebrow{color:var(--gold2);letter-spacing:5px;text-transform:uppercase;font-size:12px}
.hero h1{
  font-family:'Playfair Display',serif;font-size:clamp(48px,8vw,94px);
  line-height:1.03;margin:20px 0;
}
.hero p{font-size:18px;color:#eee;line-height:1.7}
.goldline{width:75px;height:2px;background:var(--gold);margin:25px auto}
.searchbox{
  margin:35px auto 0;display:flex;max-width:650px;
  background:white;padding:7px;border-radius:3px;
}
.searchbox input{flex:1;border:0;padding:15px;min-width:0;outline:none}
.searchbox button,.goldbutton{
  background:var(--gold);color:#171717;border:0;padding:14px 22px;
  font-weight:700;cursor:pointer;text-decoration:none;
}
.searchbox button:hover,.goldbutton:hover{background:var(--gold2)}
.quickfacts{
  background:#171717;color:white;display:grid;
  grid-template-columns:repeat(4,1fr);text-align:center;
}
.fact{padding:23px 10px;border-right:1px solid var(--line)}
.fact strong{display:block;color:var(--gold);font-size:18px;margin-bottom:5px}
.fact span{font-size:11px;letter-spacing:1.5px;text-transform:uppercase;color:#bbb}
section{padding:75px 5%;scroll-margin-top:80px}
.container{max-width:1300px;margin:auto}
.section-head{text-align:center;margin-bottom:38px}
.section-head .eyebrow{color:#9b793d}
.section-head h2{
  font-family:'Playfair Display',serif;font-size:clamp(32px,5vw,48px);
  margin:12px 0;color:#171717;
}
.section-head p{color:#666;line-height:1.7;max-width:720px;margin:0 auto}
.category-grid{
  display:grid;grid-template-columns:repeat(4,1fr);gap:16px;
}
.category{
  position:relative;min-height:190px;overflow:hidden;
  background:#222;color:white;text-decoration:none;
  display:flex;align-items:flex-end;padding:23px;
  border:1px solid #d5c9b3;
}
.category:before{
  content:"";position:absolute;inset:0;
  background:linear-gradient(0deg,rgba(0,0,0,.85),rgba(0,0,0,.05));
  z-index:1;
}
.category img{position:absolute;width:100%;height:100%;object-fit:cover;inset:0;transition:transform .5s}
.category:hover img{transform:scale(1.08)}
.category div{position:relative;z-index:2}
.category h3{font-family:'Playfair Display',serif;font-size:22px;margin:0 0 5px}
.category span{font-size:11px;letter-spacing:1.5px;color:var(--gold2);text-transform:uppercase}
.dark-section{background:#141414;color:white}
.dark-section .section-head h2{color:white}
.dark-section .section-head p{color:#bbb}
.dark-section .section-head .eyebrow{color:var(--gold)}
.feature-grid{display:grid;grid-template-columns:repeat(3,1fr);gap:22px}
.feature{
  background:#202020;border:1px solid var(--line);padding:25px;
}
.feature h3{font-family:'Playfair Display',serif;color:var(--gold2);font-size:23px}
.feature p{color:#bbb;line-height:1.7;font-size:14px}
.feature a{color:var(--gold2);text-decoration:none}
.weather-panel{
  display:grid;grid-template-columns:1fr 1fr;gap:25px;
}
.live-panel{
  background:#202020;color:white;padding:30px;border:1px solid var(--line);
}
.live-panel h3{font-family:'Playfair Display',serif;color:var(--gold2);font-size:25px}
.live-number{font-size:36px;color:white;font-weight:600;margin:12px 0}
.live-panel p{color:#bbb;line-height:1.6}
.live-panel a{color:var(--gold2)}
.news-list{display:grid;grid-template-columns:repeat(2,1fr);gap:16px}
.news-item{
  background:white;padding:22px;border-left:3px solid var(--gold);
  box-shadow:0 5px 20px rgba(0,0,0,.05);
}
.news-item a{font-weight:700;text-decoration:none;color:#202020}
.news-item p{font-size:13px;color:#777}
.news-status{font-size:12px;color:#777;margin-bottom:15px}
.filters{display:flex;gap:9px;flex-wrap:wrap;justify-content:center;margin:25px 0}
.filter{
  border:1px solid #c9b88f;background:transparent;padding:10px 16px;
  cursor:pointer;font-size:12px;text-transform:uppercase;letter-spacing:1px;
}
.filter.active,.filter:hover{background:#171717;color:var(--gold2)}
.directory-grid{
  display:grid;grid-template-columns:repeat(3,1fr);gap:17px;
}
.business{
  background:white;border:1px solid #e5dfd4;padding:22px;
  box-shadow:0 4px 18px rgba(0,0,0,.035);
  display:flex;flex-direction:column;min-height:205px;
}
.business h3{
  font-family:'Playfair Display',serif;font-size:21px;margin:0 0 7px;
}
.business .type{
  color:#98753c;font-size:10px;letter-spacing:1.5px;
  text-transform:uppercase;margin-bottom:12px;
}
.business p{font-size:13px;line-height:1.6;color:#666;margin:4px 0}
.business .actions{display:flex;gap:15px;flex-wrap:wrap;margin-top:auto;padding-top:15px}
.business .actions a{
  font-size:12px;color:#82612d;font-weight:700;text-decoration:none;
}
.business .actions a:hover{text-decoration:underline}
.empty{padding:30px;text-align:center;color:#777;grid-column:1/-1}
.callout{
  background:#e9e0d0;padding:45px;text-align:center;
  border:1px solid #d2c2a2;
}
.callout h2{font-family:'Playfair Display',serif;font-size:36px;margin:0 0 10px}
.callout p{color:#555;line-height:1.7}
footer{background:#090909;color:#aaa;padding:55px 5% 25px}
.footer-grid{
  max-width:1300px;margin:auto;display:grid;
  grid-template-columns:2fr 1fr 1fr;gap:35px;
}
footer h3{color:var(--gold);font-family:'Playfair Display',serif}
footer a{display:block;color:#bbb;text-decoration:none;margin:10px 0;font-size:13px}
footer a:hover{color:var(--gold)}
.copyright{
  max-width:1300px;margin:35px auto 0;padding-top:20px;
  border-top:1px solid #333;font-size:11px;line-height:1.7;
}
.small-note{font-size:11px;color:#888;line-height:1.6}
@media(max-width:900px){
  nav{display:none}
  .category-grid{grid-template-columns:repeat(2,1fr)}
  .directory-grid{grid-template-columns:repeat(2,1fr)}
  .feature-grid{grid-template-columns:1fr 1fr}
}
@media(max-width:600px){
  .hero{min-height:540px}
  .quickfacts{grid-template-columns:repeat(2,1fr)}
  .category-grid,.directory-grid,.feature-grid,.weather-panel,.news-list{grid-template-columns:1fr}
  section{padding:55px 5%}
  .searchbox{flex-direction:column}
  .searchbox button{width:100%}
  .footer-grid{grid-template-columns:1fr}
  .callout{padding:30px 18px}
}
</style>
</head>

<body>
<div class="topbar">BEVERLY HILLS, CALIFORNIA · THE 90210 LIFESTYLE</div>

<header>
  <div class="nav">
    <a class="logo" href="#">MY<span>90210</span>.COM</a>
    <nav>
      <a href="#discover">Discover</a>
      <a href="#shopping">Shopping</a>
      <a href="#dining">Dining</a>
      <a href="#beauty">Beauty</a>
      <a href="#realestate">Real Estate</a>
      <a href="#news">News</a>
      <a href="#city">City Live</a>
    </nav>
  </div>
</header>

<main>
<section class="hero">
  <div class="hero-content">
    <div class="eyebrow">The Beverly Hills Experience</div>
    <h1>Everything<br>BEVERLY HILLS.</h1>
    <div class="goldline"></div>
    <p>Shopping. Dining. Beauty. Real Estate. Lifestyle.<br>
    Your complete guide to the world of 90210.</p>
    <div class="searchbox">
      <input id="mainSearch" type="search" placeholder="Search Beverly Hills businesses, services and more..." aria-label="Search the directory">
      <button onclick="runSearch()">EXPLORE</button>
    </div>
  </div>
</section>

<div class="quickfacts">
  <div class="fact"><strong id="localTime">Loading...</strong><span>Beverly Hills Local Time</span></div>
  <div class="fact"><strong id="localDate">Loading...</strong><span>Today's Date</span></div>
  <div class="fact"><strong id="temperature">--°</strong><span>Current Temperature</span></div>
  <div class="fact"><strong>90210</strong><span>Beverly Hills, California</span></div>
</div>

<section id="discover">
  <div class="container">
    <div class="section-head">
      <div class="eyebrow">Explore the City</div>
      <h2>The 90210 Directory</h2>
      <p>Discover the businesses, services, places and experiences that make Beverly Hills one of the world's most recognized destinations.</p>
    </div>
    <div class="category-grid">
      <a class="category" href="#shopping">
        <img src="https://images.unsplash.com/photo-1483985988355-763728e1935b?auto=format&fit=crop&w=900&q=85" alt="Luxury fashion shopping">
        <div><h3>Luxury Shopping</h3><span>Rodeo Drive & Beyond</span></div>
      </a>
      <a class="category" href="#dining">
        <img src="https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?auto=format&fit=crop&w=900&q=85" alt="Fine dining restaurant">
        <div><h3>Fine Dining</h3><span>Restaurants & Nightlife</span></div>
      </a>
      <a class="category" href="#beauty">
        <img src="https://images.unsplash.com/photo-1560066984-138dadb4c035?auto=format&fit=crop&w=900&q=85" alt="Luxury beauty salon">
        <div><h3>Beauty & Wellness</h3><span>Salons, Spas & Hair</span></div>
      </a>
      <a class="category" href="#surgery">
        <img src="https://images.unsplash.com/photo-1576091160399-112ba8d25d1d?auto=format&fit=crop&w=900&q=85" alt="Medical consultation">
        <div><h3>Cosmetic Surgery</h3><span>Medical Aesthetics</span></div>
      </a>
      <a class="category" href="#realestate">
        <img src="https://images.unsplash.com/photo-1600607687939-ce8a6c25118c?auto=format&fit=crop&w=900&q=85" alt="Luxury home">
        <div><h3>Luxury Real Estate</h3><span>Homes & Properties</span></div>
      </a>
      <a class="category" href="#hair">
        <img src="https://images.unsplash.com/photo-1503951914875-452162b0f3f1?auto=format&fit=crop&w=900&q=85" alt="Barber and hair styling">
        <div><h3>Hair Restoration</h3><span>Men & Women</span></div>
      </a>
      <a class="category" href="#hotels">
        <img src="https://images.unsplash.com/photo-1566073771259-6a8506099945?auto=format&fit=crop&w=900&q=85" alt="Luxury hotel pool">
        <div><h3>Hotels & Spas</h3><span>Stay in Style</span></div>
      </a>
      <a class="category" href="#city">
        <img src="https://images.unsplash.com/photo-1519501025264-65ba15a82390?auto=format&fit=crop&w=900&q=85" alt="City at night">
        <div><h3>90210 Live</h3><span>Weather, Traffic & News</span></div>
      </a>
    </div>
  </div>
</section>

<section id="shopping" class="dark-section">
  <div class="container">
    <div class="section-head">
      <div class="eyebrow">The World's Famous Shopping Destination</div>
      <h2>Rodeo Drive & Luxury Shopping</h2>
      <p>Explore iconic fashion houses, fine jewelry, luxury watches, designer boutiques and specialty retailers throughout Beverly Hills.</p>
    </div>
    <div class="feature-grid">
      <div class="feature"><h3>Rodeo Drive</h3><p>Discover the famous three-block luxury shopping district and its international fashion houses.</p><a href="https://visit.rodeo/businesses" target="_blank" rel="noopener">Explore the Business Directory →</a></div>
      <div class="feature"><h3>Two Rodeo Drive</h3><p>A European-inspired shopping destination featuring luxury boutiques and specialty retailers.</p><a href="https://www.rodeodrive-bh.com/" target="_blank" rel="noopener">Visit Rodeo Drive →</a></div>
      <div class="feature"><h3>The Golden Triangle</h3><p>Discover boutiques, galleries, beauty destinations and shopping throughout Beverly Hills.</p><a href="https://lovebeverlyhills.com/" target="_blank" rel="noopener">Explore Beverly Hills →</a></div>
    </div>
    <div class="directory-grid" id="shoppingDirectory" style="margin-top:25px"></div>
    <p class="small-note">For an expanded directory, see the official and local business directories linked above. Store information can change; confirm directly before visiting.</p>
  </div>
</section>

<section id="dining">
  <div class="container">
    <div class="section-head">
      <div class="eyebrow">The Beverly Hills Table</div>
      <h2>Fine Dining & Restaurants</h2>
      <p>From celebrated steakhouses and celebrity dining rooms to sushi, Italian, French and international cuisine.</p>
    </div>
    <div class="directory-grid" id="diningDirectory"></div>
  </div>
</section>

<section id="beauty" class="dark-section">
  <div class="container">
    <div class="section-head">
      <div class="eyebrow">Look & Feel Your Best</div>
      <h2>Beauty, Salons & Wellness</h2>
      <p>Explore Beverly Hills hair salons, beauty professionals, spas, skincare and wellness destinations.</p>
    </div>
    <div class="directory-grid" id="beautyDirectory"></div>
  </div>
</section>

<section id="surgery">
  <div class="container">
    <div class="section-head">
      <div class="eyebrow">Aesthetic Medicine</div>
      <h2>Cosmetic Surgery & Medical Aesthetics</h2>
      <p>Find practices and medical resources in the Beverly Hills area. Always independently verify physician credentials, board certification, facility accreditation and suitability for treatment.</p>
    </div>
    <div class="directory-grid" id="surgeryDirectory"></div>
    <p class="small-note">Directory listings are informational only and are not endorsements or medical recommendations. Verify licensing and credentials through the appropriate medical boards.</p>
  </div>
</section>

<section id="hair" class="dark-section">
  <div class="container">
    <div class="section-head">
      <div class="eyebrow">Hair & Confidence</div>
      <h2>Hair Restoration for Men & Women</h2>
      <p>Explore hair restoration, transplant consultation, scalp health and hair-loss resources.</p>
    </div>
    <div class="directory-grid" id="hairDirectory"></div>
    <p class="small-note">Hair restoration procedures and treatments are medical services. Consult a qualified physician and verify credentials before making decisions.</p>
  </div>
</section>

<section id="realestate">
  <div class="container">
    <div class="section-head">
      <div class="eyebrow">Exceptional Properties</div>
      <h2>Beverly Hills Luxury Real Estate</h2>
      <p>Explore luxury homes, estates, listings, real estate agencies and property resources in Beverly Hills.</p>
    </div>
    <div class="directory-grid" id="realestateDirectory"></div>
  </div>
</section>

<section id="hotels" class="dark-section">
  <div class="container">
    <div class="section-head">
      <div class="eyebrow">Stay in Beverly Hills</div>
      <h2>Hotels, Resorts & Spas</h2>
      <p>Discover iconic hotels, luxury accommodations, spa destinations and memorable Beverly Hills experiences.</p>
    </div>
    <div class="directory-grid" id="hotelDirectory"></div>
  </div>
</section>

<section id="city">
  <div class="container">
    <div class="section-head">
      <div class="eyebrow">Your City, Right Now</div>
      <h2>90210 Live</h2>
      <p>Local time, current weather, traffic resources and news for Beverly Hills and the surrounding Los Angeles area.</p>
    </div>
    <div class="weather-panel">
      <div class="live-panel">
        <h3>Weather in Beverly Hills</h3>
        <div class="live-number" id="weatherTemp">Loading...</div>
        <p id="weatherDescription">Retrieving current weather conditions...</p>
        <p id="weatherDetails"></p>
        <a href="https://forecast.weather.gov/MapClick.php?lat=34.0736&lon=-118.4004" target="_blank" rel="noopener">Official Weather Forecast →</a>
      </div>
      <div class="live-panel">
        <h3>Live Traffic & Road Conditions</h3>
        <p>Check current traffic, congestion, road conditions and travel times around Beverly Hills.</p>
        <p><a href="https://www.google.com/maps/@34.0736,-118.4004,13z/data=!5m1!1e1" target="_blank" rel="noopener">OPEN LIVE BEVERLY HILLS TRAFFIC MAP →</a></p>
        <p><a href="https://quickmap.dot.ca.gov/" target="_blank" rel="noopener">Caltrans Live Road Conditions →</a></p>
        <p><a href="https://www.metro.net/" target="_blank" rel="noopener">Los Angeles Metro Updates →</a></p>
      </div>
    </div>
  </div>
</section>

<section id="news" class="dark-section">
  <div class="container">
    <div class="section-head">
      <div class="eyebrow">What's Happening in 90210</div>
      <h2>Beverly Hills News & Headlines</h2>
      <p>News and updates from Beverly Hills, Los Angeles and the surrounding community.</p>
    </div>
    <div class="news-status" id="newsStatus">Connecting to news feed...</div>
    <div class="news-list" id="newsList">
      <div class="news-item"><strong>Loading local headlines...</strong><p>News feed is being updated.</p></div>
    </div>
    <p class="small-note">Headlines link to their original publishers. News availability depends on external services and publishers.</p>
    <div class="feature-grid" style="margin-top:25px">
      <div class="feature"><h3>City of Beverly Hills</h3><p>Official city announcements, services, meetings and public information.</p><a href="https://www.beverlyhills.org/" target="_blank" rel="noopener">Visit City Website →</a></div>
      <div class="feature"><h3>Community & Visitors</h3><p>Discover attractions, events, visitor information and things to do.</p><a href="https://lovebeverlyhills.com/" target="_blank" rel="noopener">Love Beverly Hills →</a></div>
      <div class="feature"><h3>Beverly Hills Police</h3><p>Official public safety information and community updates.</p><a href="https://www.beverlyhills.org/Police" target="_blank" rel="noopener">Police Department →</a></div>
    </div>
  </div>
</section>

<section>
  <div class="container">
    <div class="callout">
      <div class="eyebrow">The 90210 Connection</div>
      <h2>Everything Beverly Hills. One Destination.</h2>
      <p>My90210.com is designed to be a central online resource for residents, visitors, businesses and anyone interested in the Beverly Hills lifestyle.</p>
      <a class="goldbutton" href="#discover">EXPLORE MY90210</a>
    </div>
  </div>
</section>
</main>

<footer>
  <div class="footer-grid">
    <div>
      <a class="logo" href="#">MY<span>90210</span>.COM</a>
      <p style="line-height:1.8;font-size:13px;max-width:430px">
        Your guide to Beverly Hills, California. Discover shopping, dining, real estate, beauty, wellness, local businesses and everything that makes 90210 unique.
      </p>
    </div>
    <div>
      <h3>Explore</h3>
      <a href="#shopping">Rodeo Drive Shopping</a>
      <a href="#dining">Fine Dining</a>
      <a href="#beauty">Salons & Beauty</a>
      <a href="#surgery">Cosmetic Surgery</a>
      <a href="#hair">Hair Restoration</a>
    </div>
    <div>
      <h3>Discover More</h3>
      <a href="#realestate">Luxury Real Estate</a>
      <a href="#hotels">Hotels & Spas</a>
      <a href="#city">Weather & Traffic</a>
      <a href="#news">Beverly Hills News</a>
      <a href="https://www.beverlyhills.org/" target="_blank" rel="noopener">Official City Website</a>
    </div>
  </div>
  <div class="copyright">
    <strong>MY90210.COM</strong> · The Beverly Hills Lifestyle & City Guide<br><br>
    My90210.com is an independent informational directory and is not affiliated with, endorsed by, or operated by the City of Beverly Hills or any business listed. Business names and trademarks belong to their respective owners. Listings are provided for informational purposes. Contact details, services, hours and availability may change. Visitors should verify information directly with each business. Medical and real estate listings are not endorsements or professional advice. News articles remain the property of their respective publishers.
    <br><br>© <span id="year"></span> My90210.com. All rights reserved.
  </div>
</footer>

<script>
const businesses = [
  // SHOPPING — Rodeo Drive and nearby
  {cat:"shopping",name:"Chanel",type:"Luxury Fashion",address:"400 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-278-5500",url:"https://www.chanel.com/"},
  {cat:"shopping",name:"Dior",type:"Luxury Fashion",address:"309 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-859-4700",url:"https://www.dior.com/"},
  {cat:"shopping",name:"Gucci",type:"Luxury Fashion",address:"347 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-278-3451",url:"https://www.gucci.com/"},
  {cat:"shopping",name:"Louis Vuitton",type:"Luxury Fashion",address:"457 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-859-0457",url:"https://us.louisvuitton.com/"},
  {cat:"shopping",name:"Hermès",type:"Luxury Fashion & Leather Goods",address:"434 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-278-6440",url:"https://www.hermes.com/"},
  {cat:"shopping",name:"Prada",type:"Luxury Fashion",address:"339-343 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-278-8661",url:"https://www.prada.com/"},
  {cat:"shopping",name:"Saint Laurent",type:"Luxury Fashion",address:"326 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-271-5051",url:"https://www.ysl.com/"},
  {cat:"shopping",name:"Bottega Veneta",type:"Luxury Fashion & Leather Goods",address:"320 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-858-6533",url:"https://www.bottegaveneta.com/"},
  {cat:"shopping",name:"Balenciaga",type:"Luxury Fashion",address:"338 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-854-0557",url:"https://www.balenciaga.com/"},
  {cat:"shopping",name:"Burberry",type:"Luxury Fashion",address:"301 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-550-4500",url:"https://us.burberry.com/"},
  {cat:"shopping",name:"Giorgio Armani",type:"Luxury Fashion",address:"436 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-271-5555",url:"https://www.armani.com/"},
  {cat:"shopping",name:"Fendi",type:"Luxury Fashion",address:"201 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-623-3420",url:"https://www.fendi.com/"},
  {cat:"shopping",name:"Valentino",type:"Luxury Fashion",address:"324 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-247-0103",url:"https://www.valentino.com/"},
  {cat:"shopping",name:"Versace",type:"Luxury Fashion",address:"240 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-205-3921",url:"https://www.versace.com/"},
  {cat:"shopping",name:"Tom Ford",type:"Luxury Fashion",address:"346 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-270-9440",url:"https://www.tomford.com/"},
  {cat:"shopping",name:"Brunello Cucinelli",type:"Luxury Fashion",address:"220 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-724-8118",url:"https://www.brunellocucinelli.com/"},
  {cat:"shopping",name:"Loro Piana",type:"Luxury Fashion",address:"337 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-860-0765",url:"https://us.loropiana.com/"},
  {cat:"shopping",name:"Jimmy Choo",type:"Luxury Footwear",address:"240 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-860-9045",url:"https://us.jimmychoo.com/"},
  {cat:"shopping",name:"Tiffany & Co.",type:"Fine Jewelry",address:"Rodeo Drive, Beverly Hills, CA 90210",phone:"",url:"https://www.tiffany.com/"},
  {cat:"shopping",name:"Cartier",type:"Fine Jewelry & Watches",address:"Rodeo Drive, Beverly Hills, CA 90210",phone:"",url:"https://www.cartier.com/"},
  {cat:"shopping",name:"Harry Winston",type:"Fine Jewelry",address:"Rodeo Drive, Beverly Hills, CA 90210",phone:"",url:"https://www.harrywinston.com/"},
  {cat:"shopping",name:"Van Cleef & Arpels",type:"Fine Jewelry",address:"300 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-276-1161",url:"https://www.vancleefarpels.com/"},
  {cat:"shopping",name:"Rodeo Collection",type:"Luxury Shopping Center",address:"421 N Rodeo Drive, Beverly Hills, CA 90210",phone:"310-275-9700",url:"https://www.rodeodrive-bh.com/rodeo-collection/"},
  {cat:"shopping",name:"Two Rodeo Drive",type:"Luxury Shopping Destination",address:"9480 Dayton Way, Beverly Hills, CA 90210",phone:"310-247-7040",url:"https://www.rodeodrive-bh.com/"},

  // DINING
  {cat:"dining",name:"The Grill on the Alley",type:"American Steakhouse",address:"9560 Dayton Way, Beverly Hills, CA 90210",phone:"",url:"https://www.thegrill.com/"},
  {cat:"dining",name:"Mr Chow",type:"Chinese Fine Dining",address:"344 N Camden Drive, Beverly Hills, CA 90210",phone:"310-278-9911",url:"https://www.mrchow.com/"},
  {cat:"dining",name:"Spago Beverly Hills",type:"California Fine Dining",address:"176 N Canon Drive, Beverly Hills, CA 90210",phone:"310-385-0880",url:"https://wolfgangpuck.com/"},
  {cat:"dining",name:"CUT by Wolfgang Puck",type:"Steakhouse",address:"9500 Wilshire Blvd, Beverly Hills, CA 90212",phone:"310-276-8500",url:"https://www.wolfgangpuck.com/"},
  {cat:"dining",name:"The Hideaway",type:"Restaurant & Lounge",address:"421 N Rodeo Drive, Beverly Hills, CA 90210",phone:"",url:"https://www.thehideawaybeverlyhills.com/"},
  {cat:"dining",name:"Marea Beverly Hills",type:"Italian Seafood",address:"430 N Camden Drive, Beverly Hills, CA 90210",phone:"310-620-8463",url:"https://www.marea-restaurant.com/"},
  {cat:"dining",name:"AVRA Beverly Hills",type:"Greek Seafood",address:"233 N Beverly Drive, Beverly Hills, CA 90210",phone:"310-734-0841",url:"https://www.avraestiat orio.com/"},
  {cat:"dining",name:"E. Baldi",type:"Italian Restaurant",address:"375 N Canon Drive, Beverly Hills, CA 90210",phone:"310-278-3522",url:"https://www.ebaldi.com/"},
  {cat:"dining",name:"THE Blvd",type:"Restaurant & Bar",address:"9500 Wilshire Blvd, Beverly Hills, CA 90212",phone:"310-275-5200",url:"https://www.fourseasons.com/beverlywilshire/"},
  {cat:"dining",name:"Nate 'n Al Delicatessen",type:"Beverly Hills Institution",address:"414 N Beverly Drive, Beverly Hills, CA 90210",phone:"310-274-0101",url:"https://www.natenal.com/"},
  {cat:"dining",name:"Il Pastaio",type:"Italian Restaurant",address:"400 N Canon Drive, Beverly Hills, CA 90210",phone:"310-205-5444",url:"https://www.ilpastaiobeverlyhills.com/"},
  {cat:"dining",name:"The Polo Lounge",type:"Classic Hotel Dining",address:"9641 Sunset Blvd, Beverly Hills, CA 90210",phone:"310-887-2777",url:"https://www.dorchestercollection.com/beverly-hills/the-beverly-hills-hotel"},
  {cat:"dining",name:"Monsieur Dior",type:"French Dining",address:"323 N Rodeo Drive, Beverly Hills, CA 90210",phone:"",url:"https://www.dior.com/"},
  {cat:"dining",name:"Vicky on Rodeo",type:"French Bistro",address:"208 N Rodeo Drive, Beverly Hills, CA 90210",phone:"",url:"https://www.vickyonrodeo.com/"},

  // BEAUTY AND SALONS
  {cat:"beauty",name:"Adriano Salon",type:"Hair Salon",address:"Rodeo Collection, 421 N Rodeo Drive, Beverly Hills, CA 90210",phone:"",url:"https://www.rodeodrive-bh.com/rodeo-collection/"},
  {cat:"beauty",name:"M Salon",type:"Hair Salon",address:"Rodeo Collection, 421 N Rodeo Drive, Beverly Hills, CA 90210",phone:"",url:"https://www.rodeodrive-bh.com/rodeo-collection/"},
  {cat:"beauty",name:"Ferit Salon",type:"Hair Salon",address:"Rodeo Collection, 421 N Rodeo Drive, Beverly Hills, CA 90210",phone:"",url:"https://www.rodeodrive-bh.com/rodeo-collection/"},
  {cat:"beauty",name:"BarberLab",type:"Barber & Men's Grooming",address:"412 N Bedford Drive, Beverly Hills, CA 90210",phone:"310-734-7727",url:"https://www.visit.rodeo/"},
  {cat:"beauty",name:"The Foot Nanny",type:"Foot Care & Wellness",address:"Rodeo Collection, 421 N Rodeo Drive, Beverly Hills, CA 90210",phone:"",url:"https://www.footnanny.com/"},
  {cat:"beauty",name:"Spa de Med",type:"Spa & Wellness",address:"Rodeo Collection, 421 N Rodeo Drive, Beverly Hills, CA 90210",phone:"",url:"https://www.rodeodrive-bh.com/rodeo-collection/"},

  // COSMETIC SURGERY / MEDICAL
  {cat:"surgery",name:"Beverly Hills Cosmetic Surgery Center",type:"Cosmetic Surgery Practice",address:"450 N Bedford Drive, Suite 203, Beverly Hills, CA 90210",phone:"310-550-6174",url:"https://www.visit.rodeo/"},
  {cat:"surgery",name:"Beverly Hills Dermatology Consultants",type:"Dermatology",address:"433 N Camden Drive, Beverly Hills, CA 90210",phone:"",url:"https://www.visit.rodeo/"},
  {cat:"surgery",name:"The Roxbury Institute",type:"Plastic Surgery & Aesthetic Medicine",address:"Beverly Hills, CA",phone:"",url:"https://www.roxburyinstitute.com/"},
  {cat:"surgery",name:"Beverly Hills Physicians",type:"Plastic Surgery & Aesthetic Medicine",address:"Beverly Hills, CA",phone:"",url:"https://www.beverlyhillsphysicians.com/"},
  {cat:"surgery",name:"Cedars-Sinai",type:"Medical Center & Specialist Referrals",address:"8700 Beverly Blvd, Los Angeles, CA 90048",phone:"800-233-2771",url:"https://www.cedars-sinai.org/"},

  // HAIR RESTORATION
  {cat:"hair",name:"Bosley Hair Restoration",type:"Hair Restoration",address:"Beverly Hills / Los Angeles area",phone:"",url:"https://www.bosley.com/"},
  {cat:"hair",name:"Hair Club",type:"Hair Restoration for Men & Women",address:"Los Angeles area",phone:"",url:"https://www.hairclub.com/"},
  {cat:"hair",name:"The Roxbury Institute",type:"Hair Restoration & Transplant Resources",address:"Beverly Hills, CA",phone:"",url:"https://www.roxburyinstitute.com/"},
  {cat:"hair",name:"ISHRS",type:"Physician Search & Hair Restoration Education",address:"International professional resource",phone:"",url:"https://ishrs.org/"},

  // REAL ESTATE
  {cat:"realestate",name:"The Agency",type:"Luxury Real Estate Brokerage",address:"331 Foothill Road, Beverly Hills, CA 90210",phone:"310-786-1800",url:"https://www.theagencyre.com/"},
  {cat:"realestate",name:"Sotheby's International Realty",type:"Luxury Real Estate",address:"Beverly Hills, CA",phone:"",url:"https://www.sothebysrealty.com/"},
  {cat:"realestate",name:"Hilton & Hyland",type:"Luxury Real Estate",address:"Beverly Hills, CA",phone:"",url:"https://www.hiltonhyland.com/"},
  {cat:"realestate",name:"Coldwell Banker Realty",type:"Residential Real Estate",address:"Beverly Hills, CA",phone:"",url:"https://www.coldwellbankerhomes.com/"},
  {cat:"realestate",name:"Compass",type:"Luxury Real Estate",address:"Beverly Hills, CA",phone:"",url:"https://www.compass.com/"},
  {cat:"realestate",name:"Douglas Elliman",type:"Luxury Real Estate",address:"Beverly Hills, CA",phone:"",url:"https://www.elliman.com/"},
  {cat:"realestate",name:"Beverly Hills Association of Realtors",type:"Real Estate Professional Resource",address:"Beverly Hills, CA",phone:"",url:"https://www.beverlyhillsrealtors.com/"},

  // HOTELS
  {cat:"hotels",name:"The Beverly Hills Hotel",type:"Luxury Hotel & Spa",address:"9641 Sunset Blvd, Beverly Hills, CA 90210",phone:"310-276-2251",url:"https://www.dorchestercollection.com/beverly-hills/the-beverly-hills-hotel"},
  {cat:"hotels",name:"Beverly Wilshire, A Four Seasons Hotel",type:"Luxury Hotel",address:"9500 Wilshire Blvd, Beverly Hills, CA 90212",phone:"310-275-5200",url:"https://www.fourseasons.com/beverlywilshire/"},
  {cat:"hotels",name:"The Peninsula Beverly Hills",type:"Luxury Hotel & Spa",address:"9882 S Santa Monica Blvd, Beverly Hills, CA 90212",phone:"310-551-2888",url:"https://www.peninsula.com/en/beverly-hills"},
  {cat:"hotels",name:"Waldorf Astoria Beverly Hills",type:"Luxury Hotel & Spa",address:"9850 Wilshire Blvd, Beverly Hills, CA 90210",phone:"310-860-6666",url:"https://www.hilton.com/en/hotels/laxwawa-waldorf-astoria-beverly-hills/"},
  {cat:"hotels",name:"The Maybourne Beverly Hills",type:"Luxury Hotel & Spa",address:"225 N Canon Drive, Beverly Hills, CA 90210",phone:"310-860-7800",url:"https://www.maybourne.com/"},
  {cat:"hotels",name:"The Beverly Hilton",type:"Luxury Hotel",address:"9876 Wilshire Blvd, Beverly Hills, CA 90210",phone:"310-274-7777",url:"https://www.hilton.com/en/hotels/burwawa-the-beverly-hilton/"}
];

const categoryTargets = {
  shopping:"shoppingDirectory",
  dining:"diningDirectory",
  beauty:"beautyDirectory",
  surgery:"surgeryDirectory",
  hair:"hairDirectory",
  realestate:"realestateDirectory",
  hotels:"hotelDirectory"
};

function escapeHTML(value){
  return String(value || "").replace(/[&<>"']/g, c => ({
    "&":"&amp;","<":"&lt;",">":"&gt;",'"':"&quot;","'":"&#39;"
  })[c]);
}
function safeURL(url){
  try{
    const u = new URL(url);
    return ["https:","http:"].includes(u.protocol) ? u.href : "#";
  }catch(e){return "#";}
}
function renderBusiness(item){
  const phone = item.phone ? `<a href="tel:${escapeHTML(item.phone.replace(/[^\d+]/g,''))}">Call ${escapeHTML(item.phone)}</a>` : "";
  return `<article class="business" data-search="${escapeHTML((item.name+" "+item.type+" "+item.address).toLowerCase())}">
    <div class="type">${escapeHTML(item.type)}</div>
    <h3>${escapeHTML(item.name)}</h3>
    <p>${escapeHTML(item.address)}</p>
    ${item.phone ? `<p>${escapeHTML(item.phone)}</p>` : ""}
    <div class="actions">
      <a href="${safeURL(item.url)}" target="_blank" rel="noopener">WEBSITE ↗</a>
      ${phone}
      <a href="https://www.google.com/maps/search/?api=1&query=${encodeURIComponent(item.name+" "+item.address)}" target="_blank" rel="noopener">MAP ↗</a>
    </div>
  </article>`;
}
function renderDirectories(){
  Object.entries(categoryTargets).forEach(([category,id])=>{
    const target=document.getElementById(id);
    target.innerHTML=businesses.filter(b=>b.cat===category).map(renderBusiness).join("");
  });
}
function runSearch(){
  const input=document.getElementById("mainSearch");
  const terms=input.value.toLowerCase().trim().split(/\s+/).filter(Boolean);
  if(!terms.length){document.querySelectorAll(".business").forEach(x=>x.style.display="");return;}
  document.querySelectorAll(".business").forEach(card=>{
    const content=card.dataset.search || "";
    card.style.display=terms.every(term=>content.includes(term))?"flex":"none";
  });
  const first=document.querySelector(".business:not([style*='display: none'])");
  if(first) first.scrollIntoView({behavior:"smooth",block:"center"});
  else document.getElementById("shopping").scrollIntoView({behavior:"smooth"});
}
document.getElementById("mainSearch").addEventListener("keydown",e=>{
  if(e.key==="Enter")runSearch();
});

function updateClock(){
  const now=new Date();
  document.getElementById("localTime").textContent=new Intl.DateTimeFormat("en-US",{
    timeZone:"America/Los_Angeles",hour:"numeric",minute:"2-digit",second:"2-digit"
  }).format(now);
  document.getElementById("localDate").textContent=new Intl.DateTimeFormat("en-US",{
    timeZone:"America/Los_Angeles",weekday:"short",month:"short",day:"numeric",year:"numeric"
  }).format(now);
  document.getElementById("year").textContent=now.getFullYear();
}
updateClock();
setInterval(updateClock,1000);

async function loadWeather(){
  const url="https://api.open-meteo.com/v1/forecast?latitude=34.0736&longitude=-118.4004&current=temperature_2m,relative_humidity_2m,apparent_temperature,is_day,precipitation,weather_code,wind_speed_10m&temperature_unit=fahrenheit&wind_speed_unit=mph&timezone=America%2FLos_Angeles";
  const descriptions={
    0:"Clear sky",1:"Mainly clear",2:"Partly cloudy",3:"Overcast",
    45:"Fog",48:"Depositing rime fog",51:"Light drizzle",53:"Drizzle",
    55:"Heavy drizzle",61:"Light rain",63:"Rain",65:"Heavy rain",
    71:"Light snow",73:"Snow",75:"Heavy snow",80:"Rain showers",
    81:"Rain showers",82:"Heavy rain showers",95:"Thunderstorm",
    96:"Thunderstorm with hail",99:"Thunderstorm with hail"
  };
  try{
    const response=await fetch(url);
    if(!response.ok)throw new Error("Weather unavailable");
    const data=await response.json();
    const c=data.current;
    const temp=Math.round(c.temperature_2m);
    document.getElementById("temperature").textContent=temp+"°F";
    document.getElementById("weatherTemp").textContent=temp+"°F";
    document.getElementById("weatherDescription").textContent=descriptions[c.weather_code]||"Current conditions";
    document.getElementById("weatherDetails").textContent=
      "Feels like "+Math.round(c.apparent_temperature)+"°F · Humidity "+c.relative_humidity_2m+
      "% · Wind "+Math.round(c.wind_speed_10m)+" mph";
  }catch(error){
    document.getElementById("temperature").textContent="Unavailable";
    document.getElementById("weatherTemp").textContent="Weather unavailable";
    document.getElementById("weatherDescription").textContent="Please use the official forecast link for current conditions.";
    document.getElementById("weatherDetails").textContent="";
  }
}
loadWeather();
setInterval(loadWeather,15*60*1000);

async function loadNews(){
  const target=document.getElementById("newsList");
  const status=document.getElementById("newsStatus");
  const feed="https://news.google.com/rss/search?q=Beverly+Hills+California&hl=en-US&gl=US&ceid=US:en";
  const proxy="https://api.rss2json.com/v1/api.json?rss_url="+encodeURIComponent(feed);
  try{
    const response=await fetch(proxy);
    if(!response.ok)throw new Error("Feed unavailable");
    const data=await response.json();
    if(data.status!=="ok" || !data.items?.length)throw new Error("No news items");
    target.innerHTML=data.items.slice(0,8).map(item=>{
      const title=escapeHTML(item.title);
      const link=safeURL(item.link);
      const date=item.pubDate?new Date(item.pubDate).toLocaleString():"Recently published";
      return `<article class="news-item"><a href="${link}" target="_blank" rel="noopener">${title}</a><p>${escapeHTML(date)} · Original publisher</p></article>`;
    }).join("");
    status.textContent="Latest available headlines · Feed refreshed "+new Date().toLocaleTimeString();
  }catch(error){
    status.textContent="The automatic news feed could not be reached. Use these local news resources:";
    target.innerHTML=`
      <article class="news-item"><a href="https://www.beverlyhills.org/" target="_blank" rel="noopener">City of Beverly Hills — Official Updates</a><p>City announcements and community information.</p></article>
      <article class="news-item"><a href="https://www.google.com/search?q=Beverly+Hills+California+news&tbm=nws" target="_blank" rel="noopener">Beverly Hills News Search</a><p>Open current news results.</p></article>
      <article class="news-item"><a href="https://www.cbsnews.com/losangeles/" target="_blank" rel="noopener">CBS Los Angeles</a><p>Regional news coverage.</p></article>
      <article class="news-item"><a href="https://www.nbclosangeles.com/" target="_blank" rel="noopener">NBC Los Angeles</a><p>Regional news coverage.</p></article>`;
  }
}
loadNews();
setInterval(loadNews,15*60*1000);

renderDirectories();
</script>
</body>
</html>
