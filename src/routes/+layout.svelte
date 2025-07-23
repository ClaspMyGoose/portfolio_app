<script>
	import '../app.css';
  import { Mail } from 'lucide-svelte';
  import { siGithub } from 'simple-icons';
  import BrandIcon from "$lib/BrandIcon.svelte";
  import LinkedInIcon from "$lib/LinkedInIcon.svelte";


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
      <button class="clip-button"><span>Download Resume</span></button>
  </div>
</nav>


{@render children()}


<div class="hr-container">
  <hr>
</div>
<footer>
  <div class="footer-info">
    <h3>Systems design with the human in mind</h3>
    <p>Working independently / Open to FTE roles</p>
  </div>
  <div class="footer-links">
    <a href="mailto:michael.bearden1@outlook.com"><Mail size={14}/></a>
    <a href="https://github.com/ClaspMyGoose"><BrandIcon icon={siGithub} size={14}/></a>
    <a href="https://www.linkedin.com/in/michael-bearden-02486726a"><LinkedInIcon size={14}/></a>
  </div>
</footer>


