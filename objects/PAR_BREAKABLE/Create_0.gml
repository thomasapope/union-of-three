/// @description  Setup
/* 
    Any object that can be damaged uses this as a parent.
*/

// Variables
/* These will be set individually for each child of this object. */
hp = 1; // health of object. something happens when health runs out

mobile = 0; // is this object a moving entity (is it alive?)
crit = 0; // can critical damage be dealt to this object
text = 0; // is damage text drawn when this object is damaged

/** Default Crit Location
 * Each object that uses its own critical location must
 * have its own script as well as any variables necessary 
 * for the crit check
**/

crit_location = default_crit; // The default crit location check script 

/* */
/*  */
