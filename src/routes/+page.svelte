<script lang="ts">


	import type { PageData }  from "./$types";
  // export let data: PageData;
  import { Mail } from 'lucide-svelte';
  import { siGithub } from 'simple-icons';
  import BrandIcon from "$lib/BrandIcon.svelte";
  import LinkedInIcon from "$lib/LinkedInIcon.svelte";



  let { data } = $props()  
  const { projects, writing }: PageData = data;



</script>

<section class="section">
  <div class="container">
    <div class="intro-component">
      <h1>
        Systems design with the human in mind
      </h1>
      <p>
        Analytics Engineer with professional experience in healthcare and manufacturing. My educational background is in Logistics Mgmt / Supply Chain. 
        Passionate about putting technology to work for people. 
        Interested in the efficiency and structural harmony of business processes and their measurement.
      </p>
      <div class="button-group">
        <a href="mailto:michael.bearden1@outlook.com" class="btn btn-primary">
          <Mail size={16}/>
          Say Hello!
        </a>
        <a href="https://github.com/ClaspMyGoose" class="btn btn-secondary">
          <BrandIcon icon={siGithub} size={16}/>
          GitHub
        </a>
        <a href="https://www.linkedin.com/in/michael-bearden-02486726a/" class="btn btn-secondary">
          <LinkedInIcon size={16}/>
          LinkedIn
        </a>
      </div>
    </div>
  </div>
</section>



<!-- Recent Projects -->
<section id="project-section" class="section">
  <div class="container">
    <h2>Highlighted Projects</h2>
    <hr>
    {#if projects}
      {#each projects as project}
        <div class="project-component">
          <img src={project.project_image_link} alt={`Thumbnail for ${project.project_name} project.`}>
          <div class="project-content">
            <div class="project-header">
              <h3>{project.project_name}</h3>
              <span class="tag-pill">{project.project_main_tag}</span>
            </div>
            <div class="project-footer">
              <p>{project.project_description}</p>
              <div>
                {#each project.project_tags as tag}
                <span class="tag-rect">{tag}</span>
                {/each}
              </div>
              <a href={project.project_link}><span class="source-link"><BrandIcon icon={siGithub} size={14}/> View Source</span></a>    
            </div>
          </div>
        </div>
      {/each}
    {:else}
      <p>There was an issue getting your data!</p>
    {/if}
  </div>
</section>


<!-- experience -->
<section id="exp-section" class="section">
  <div class="container">
    <h2>Recent Experience</h2>
    <hr>
    <div class="exp-component">
      <div class="exp-header">
        <div class="exp-where">
          <h3>Manager - Reporting & Analytics</h3>
          <h4>HCA</h4>
        </div>  
        <div class="exp-when">
          <span>July 2024 - April 2025</span>
        </div>
      </div>
      <ul>
        <li>Lead and mentor team of 5 BI Analysts with differing skillsets and experience levels</li>
        <li>Evaluate, scope, and execute a variety of enterprise-scale data and reporting initiatives across service lines</li>
        <li>Partner with assigned IT resources to conceptually plan, build, test, and deploy analytical infrastructure to business requirements</li>
      </ul>  
    </div>
    <div class="exp-component">
      <div class="exp-header">
        <div class="exp-where">
          <h3>Business Intelligence Analyst I/II</h3>
          <h4>HCA</h4>
        </div>  
        <div class="exp-when">
          <span>January 2022 - June 2024</span>
        </div>
      </div>
      <ul>
        <li>{'Own and lead key reporting initiatives, requiring in depth understanding of a variety of laboratory data models in multiple database environments (Google Big Query, Teradata, SQL Server)'}</li>
        <li>{'Automate individual reports and existing manual data processes using SQL, Python, and Task Manager'}</li>
        <li>{'Leveraged Excel, Power BI, SQL, and DAX to retrieve datasets from multiple RDBMS, perform necessary data manipulation, and visualize data for actionable use by end users'}</li>
      </ul>  
    </div>
  </div>
</section>

<!-- writing -->

<section id="writing-section" class="section">
  <div class="container">
    <h2>Various Writings</h2>
    <hr>
    {#each writing as article}
      <div class="writing-component">
        <div class="writing-header">
          <h3>{article.piece_title}</h3>
          <div>
            <span class="tag-pill">{article.piece_category}</span>
          </div>
        </div>
        {#if article.piece_text.length > 300}
        <p>{article.piece_text.slice(0, 300) + '...(cont.)'}</p>
        <a href={`/writing/${article.piece_id}`} >Read the full article</a>
        {:else}
        <p>{article.piece_text}</p>
        {/if}
      </div>
    {/each}
  </div>
</section>

<!--  -->
