<script lang='ts'>
    import type { PageData } from "../$types";

    let { data }: {data: PageData} = $props();
    

    if (data.error !== null) {
        console.error(data.error)
        //throw error(500, 'Database Connection Failed') 
    }; 

</script>

<h1>Projects</h1>
{#if data.error !==null}
<p>There was an error fetching from database, please reload the page.</p>
{:else}
<ul>
    {#each data.rows as project}
        <li>
            <ul id={project.project_id}>
                <img src={`data:image/png;base64,${project.project_thumbnail}`} alt="Dynamic generated alt text">
                <h2><a href='/projects/{project.project_name}'>{project.project_name}</a></h2>
                <a href={project.project_link}>Repo</a> 
                <p>{project.project_description}</p>
                <ul>
                    {#each project.project_tags as tag}
                        <ul>
                            {tag}
                        </ul>
                    {/each}
                </ul>
            </ul>
        </li>
    {/each}
</ul>
{/if}



