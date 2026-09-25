---
author: OASIS DITA Technical Committee
---

# Example: Fallback information for multimedia content

In this scenario, fallback content is provided for systems that cannot display multimedia content.

The referenced video provides an image as fallback. If a system does not support video, it will display the image `video-not-available.png`, which specifies its own alternate text.

```
<video height="300px"
                loop="false"
                muted="false"
                width="400px">
  <desc>A video that illustrates how to conduct a system health scan.</desc>
  **&lt;fallback&gt;
    &lt;image href="video-not-available.png"&gt;
      &lt;alt&gt;This video cannot be displayed.&lt;/alt&gt;
    &lt;/image&gt;
  &lt;/fallback&gt;**
  <video-poster keyref="demo1-video-poster"/>
  <media-source href="video.mp4" format="video/mp4"/>
</video>
```

**Parent topic:**[Examples of DITA markup for accessibility](../../archSpec/base/examples-of-dita-markup-for-accessibility.md)

