<script lang="ts">
	import '../app.css';
  import { Mail } from 'lucide-svelte';
  import { siGithub } from 'simple-icons';
  import BrandIcon from "$lib/BrandIcon.svelte";
  import LinkedInIcon from "$lib/LinkedInIcon.svelte";
  import { onMount } from 'svelte'; 

  let darkMode = $state(false); 
  let menuToggled = $state(false);

  
  
  const applyTheme = () => {
    if (darkMode) {
      document.documentElement.classList.add('dark');
    } else {
      document.documentElement.classList.remove('dark');
    }
  }
  
  onMount(() => {
    // Check localStorage and system preference
    const saved = localStorage.getItem('darkMode');
    if (saved !== null) {
      darkMode = JSON.parse(saved);
    } else {
      darkMode = window.matchMedia('(prefers-color-scheme: dark)').matches;
    }
    applyTheme()
  });

  const toggleDarkMode = () => {
    darkMode = !darkMode;
    localStorage.setItem('darkMode', JSON.stringify(darkMode));
    applyTheme();
  }


  const handleClickOutside = (event: MouseEvent) => {

    if (menuToggled && event.target instanceof Element && event.target.closest('.mobile-menu a')) {
    menuToggled = false;
    return;
    }


    if (menuToggled && event.target instanceof Element && !event.target.closest('.mobile-menu, .hamburger')) {
      menuToggled = false;
    }
  }

  $effect(() => {
    if (menuToggled) {
      document.addEventListener('click', handleClickOutside);
    } else {
      document.removeEventListener('click', handleClickOutside);
    }
    
    // Cleanup
    return () => {
      document.removeEventListener('click', handleClickOutside);
    };
  });

	let { children } = $props();

</script>

<nav class="navbar">
  <div class="nav-container">
    <!-- Home link on the left -->
    <a href="/" class="nav-home"><span class="name-underline">Michael Bearden</span></a>
    
    <!-- Desktop navigation links (hidden on mobile) -->
    <div class="web-menu">
      <a class="web-link" href="/#project-section">Projects</a>
      <a class="web-link"  href="/#exp-section">Experience</a>
      <a class="web-link"  href="/#writing-section">Writing</a>
      <a href="https://storage.googleapis.com/portfolio-project-resume/resume_2025.pdf" class="clip-button">
        <span>Download Resume</span>
      </a>
      <!-- <button onclick={toggleDarkMode} class="theme-toggle">{darkMode ? '☀️' : '🌙'}</button> -->
      <label class="theme-switch">
        <input type="checkbox" checked={darkMode} onchange={() => toggleDarkMode()}>
        <span class="slider"></span>
      </label>
    </div>
    
    <!-- Mobile hamburger button (hidden on desktop) -->
    <button onclick={() => menuToggled = !menuToggled} class="hamburger" aria-label="Toggle menu">
      <span></span>
      <span></span>
      <span></span>
    </button>
  </div>
  
  <!-- Mobile menu (hidden by default) -->
  <div id='menu-modal' class="mobile-menu" class:open={menuToggled}>
    <a class='mobile-link' href="/#project-section">Projects</a>
    <a class='mobile-link' href="/#exp-section">Experience</a>
    <a class='mobile-link' href="/#writing-section">Writing</a>
    <div class='mobile-buttons'>
      <a href="https://storage.googleapis.com/portfolio-project-resume/resume_2025.pdf" 
        download
        class="clip-button">
          <span>Download Resume</span>
        </a>
      <!-- <button onclick={toggleDarkMode} class="theme-toggle">{darkMode ? '☀️' : '🌙'}</button> -->
      <label class="theme-switch">
        <input type="checkbox" checked={darkMode} onchange={() => toggleDarkMode()}>
        <span class="slider"></span>
      </label>
    </div>
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


