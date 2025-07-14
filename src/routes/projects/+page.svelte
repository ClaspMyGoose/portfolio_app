<script lang='ts'>
    let projectsArray = [
        {
            slug: 'othername',
            title: 'Other Name Project'
        },
        {
            slug: 'test',
            title: 'Test Project'
        }
    ]
</script>


<h1>Projects</h1>
<ul>
    {#each projectsArray as project}
        <li>
            <a href='/projects/{project.slug}'>{project.title}</a>
        </li>
    {/each}
</ul>