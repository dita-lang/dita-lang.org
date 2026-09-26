---
author: OASIS DITA Technical Committee
---

# General task

A general task topic answers the "How do I?" question by providing instructions and other necessary information that enables users to complete the task successfully. It has a content model that is more relaxed than that of the strict task.

## Content model

The general task topic is divided into three parts:

-   **Introduction**

    This portion of the topic can contain the following structural sections:

    -   Prerequisites: [`<prereq>`](../../langRef/technicalContent/prereq.md)
    -   Contextual information: [`<context>`](../../langRef/technicalContent/context.md)
    -   Sections: `<section>`
    These sections are all optional. They can appear in any order and can occur multiple times.

-   **Procedural instructions**

    This portion of the topic can contain only one of the following structural sections:

    -   Steps: [`<steps>`](../../langRef/technicalContent/steps.md)
    -   Steps informal: [`<steps-informal>`](../../langRef/technicalContent/steps-informal.md)
    -   Steps unordered: [`<steps-unordered>`](../../langRef/technicalContent/steps-unordered.md)
-   **Post-instructions**

    The section of the topic can contain the following structural sections:

    1.  Result: [`<result>`](../../langRef/technicalContent/result.md)
    2.  Troubleshooting information: [`<tasktroubleshooting>`](../../langRef/technicalContent/tasktroubleshooting.md)
    3.  Example: `<example>`
    4.  What to do next: [`<postreq>`](../../langRef/technicalContent/postreq.md)
    While all of the above structural components are optional, they must occur in the outlined order. Examples and post-requisites can occur multiple times.


## Example

The following code sample illustrates the relaxed content model of the general task topic. Note that there are multiple `<prereq>` elements and that they are preceded by a `<context>` element. The stylesheets used to generate output produce different labels for each of the `<prereq>` sections, triggered by the value of the `@outputclass` attribute.

```
<task id="changing_a_tire">
  <title>Changing a tire</title>
  <taskbody>
    <context><p>A flat tire typically shows up unexpectedly and catapults itself onto the 
        top of your priority list. A flat tire can happen to anyone at any time. It doesn’t 
        matter if you were already running late or if you’re wearing a cocktail dress. 
        Regardless of your situation, the basic mechanics of changing a tire are the same 
        whether you’re working with a car, truck, van, or SUV. </p>
    </context>
    <prereq outputclass="safety">
      <ul>
        <li>Find a safe place to pull over. The ground should be solid and
          level to keep your car from rolling. If you’re on the side of the
          road, pull over as far possible. Avoid stopping near any bends in
          the road, as this reduces visibility for both you and other
          drivers. If you’re in a dark or unsafe area, carefully drive to a
          better spot.</li>
        <li>Use your hazard lights and parking brake to keep yourself and
          your vehicle safe by increasing your visibility and decreasing
          the vehicle’s ability to roll.</li>
      </ul>
    </prereq>
    <prereq outputclass="tools"><p>At the bare minimum, you’ll need a jack, wrench, and 
        a spare tire. These three items should always be in your vehicle just in case a
        flat tire occurs. Additional items that can make tire changing a little easier 
        include:</p>
      <ul>
        <li>Flashlight</li>
        <li>Gloves</li>
        <li>Mat for kneeling</li>
        <li>Rain poncho</li>
        <li>Tire gauge</li>
        <li>Your vehicle’s owner’s manual</li>
      </ul>
    </prereq>
    <steps>
      <step><cmd>Verify you are in a safe location to change the tire.</cmd></step>
      <!-- more steps -->
    </steps>
    <postreq>
      <!-- ... -->
    </postreq>
  </taskbody>
</task>
```

**Parent topic:**[Task](../../archSpec/technicalContent/task.md)

