<script>
	import '../app.css';

  let menuToggled = false; 

  const toggleMenu = () => {
    const mobileMenu = document.getElementById('menu-modal')

    if (menuToggled) {
      mobileMenu?.classList.remove('open');
      menuToggled = false;
    } else {
      mobileMenu?.classList.add('open');
      menuToggled = true; 

    }

  } 

	let { children } = $props();
</script>



<nav class="navbar">
  <div class="nav-container">
    <!-- Home link on the left -->
    <a href="/" class="nav-home"><span class="name-underline">Michael Bearden</span></a>
    
    <!-- Desktop navigation links (hidden on mobile) -->
    <div class="nav-links">
      <a href="/projects">Projects</a>
      <a href="/writing">Writing</a>
      <a href="/">Photos</a>
	  <a href="/contact">Contact</a>
      <button class="clip-button"><span>Download Resume</span></button>
    </div>
    
    <!-- Mobile hamburger button (hidden on desktop) -->
    <button onclick={toggleMenu} class="hamburger" aria-label="Toggle menu">
      <span></span>
      <span></span>
      <span></span>
    </button>
  </div>
  
  <!-- Mobile menu (hidden by default) -->
  <div id='menu-modal' class="mobile-menu">
    <a href="/projects">Projects</a>
      <a href="/writing">Writing</a>
      <a href="/">Photos</a>
	  <a href="/contact">Contact</a>
      <button class="nav-button">Download Resume</button>
  </div>
</nav>


{@render children()}


