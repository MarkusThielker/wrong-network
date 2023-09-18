<script lang="ts">
    import { env } from "$env/dynamic/public";
</script>

<p class="text-3xl font-semibold uppercase">{env.PUBLIC_HEADING}</p>
<p class="text-xl">{env.PUBLIC_SUBHEADING}</p>
