/* See LICENSE file for copyright and license details. */
//####---- dwm ----####

/* appearance */
static const unsigned int borderpx  = 4;        /* border pixel of windows */
static const unsigned int snap      = 28;       /* snap pixel */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "Source Code Pro Bold:size=11" };
static const char dmenufont[]       =   "Source Code Pro Bold:size=11"  ;
static const char col_gray1[]       = "#222222";
static const char col_gray2[]       = "#444444";
static const char col_gray3[]       = "#bbbbbb";
static const char col_gray4[]       = "#eeeeee";
//static const char col_cyan[]        = "#383a59"; // dracula
static const char col_cyan[]        = "#784510"; // gruvbox green
static const char *colors[][3]      = {
  /*               fg         bg         border   */
  [SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
  [SchemeSel]  = { col_gray4, col_cyan,  col_cyan  },
};

/* tagging */
static const char *tags[] = { "1", "2", "3", "4", "5" };

/* layout(s) */
static const float mfact        = 0.60; /* factor of master area size [0.05..0.95] */
static const int nmaster        = 1;    /* number of clients in master area */
static const int resizehints    = 1;    /* 1 means respect size hints in tiled resizals */
static const int lockfullscreen = 1;    /* 1 will force focus on the fullscreen window */

#include "layouts.c"
static const Layout layouts[] = {
  /* symbol     arrange function */
  { "[]=",      tile },    /* first entry is default */
  { "><>",      NULL },    /* no layout function means floating behavior */
  { "[M]",      monocle },
  { "HHH",      grid },
};

/* key definitions */
#define SUPER Mod4Mask     // Mod1Mask = Alt   Mod4Mask = Winkey (Super)
#define TAGKEYS(KEY,TAG) \
  { SUPER,                       KEY,      view,           {.ui = 1 << TAG} }, \
  { SUPER|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
  { SUPER|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
  { SUPER|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

static const Rule rules[] = {
  /* xprop(1):
   * WM_CLASS(STRING) = instance, class
   * WM_NAME(STRING) = title
  */
  /* class      instance    title       tags mask     isfloating   monitor */
  { "bash",         NULL,       NULL,       0,            1,           -1 },
  { "firefox",      NULL,       NULL,       1 << 3,       0,           -1 },
  { "gimp",         NULL,       NULL,       0,            1,           -1 },
  { "lf",           NULL,       NULL,       0,            1,           -1 },
  { "librewolf",    NULL,       NULL,       0,            0,           -1 },
  { "lxterminal",   NULL,       NULL,       0,            1,           -1 },
  { "st_float",     NULL,       NULL,       0,            1,           -1 },
  { "st---",            NULL,       NULL,       0,            1,           -1 },
  { "sxiv",         NULL,       NULL,       0,            1,           -1 },
};
/* commands */
static const char lines[] = "20";
static const char *dmenucmd[]    = { "dmenu_run", "-l", lines, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *termcmd[]     = { "st", NULL };
static const char *term_float[]  = { "st_float", "bash -login", NULL };
//static const char *term_float[]  = { "st_float bash -login &", NULL };
static const char *www_cmd[]     = { "firefox" , NULL };
static const char *filemanager[] = { "st" , "lf", NULL };
//static const char *screenshot[] = { "/dat.mnt/dotfiles/scripts/scrot/screenshoot.sh" , NULL };
static const char *screenshot[]  = { "st" , "scrot", NULL };

static const Key keys[] = {
  /* modifier                     key        function        argument */

  { SUPER,                       XK_b,      togglebar,      {0} },
  { SUPER,                       XK_e,      spawn,          {.v = filemanager } },
  { SUPER,                       XK_r,      spawn,          {.v = dmenucmd    } },
  { SUPER,                       XK_t,      spawn,          {.v = termcmd     } },
  { SUPER,                       XK_w,      spawn,          {.v = www_cmd     } },
  { SUPER,                       XK_x,      spawn,          {.v = screenshot  } },
  
//try to start st in floating mode
  { SUPER|ShiftMask,             XK_t,      spawn,          {.v = term_float  } },

  { SUPER,                       XK_j,      focusstack,     {.i = +1 } },
  { SUPER,                       XK_k,      focusstack,     {.i = -1 } },
  { SUPER,                       XK_h,      setmfact,       {.f = -0.02} },
  { SUPER,                       XK_l,      setmfact,       {.f = +0.02} },
  { SUPER,                       XK_i,      incnmaster,     {.i = +1 } },
  { SUPER,                       XK_u,      incnmaster,     {.i = -1 } },
  { SUPER,                       XK_Return, zoom,           {0} },
  { SUPER,                       XK_Tab,    view,           {0} },
  { SUPER,                       XK_n,      setlayout,      {.v = &layouts[0]} },      // normal tabbed / stacked
  { SUPER,                       XK_f,      setlayout,      {.v = &layouts[1]} },      // floating
  { SUPER,                       XK_m,      setlayout,      {.v = &layouts[2]} },      // monocle
  { SUPER,                       XK_g,      setlayout,      {.v = &layouts[3]} },      // grid
  { SUPER,                       XK_space,  setlayout,      {0} },
  { SUPER|ShiftMask,             XK_space,  togglefloating, {0} },
  { SUPER,                       XK_0,      view,           {.ui = ~0 } },
  { SUPER|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
  { SUPER,                       XK_comma,  focusmon,       {.i = -1 } },
  { SUPER,                       XK_period, focusmon,       {.i = +1 } },
  { SUPER|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
  { SUPER|ShiftMask,             XK_period, tagmon,         {.i = +1 } },

  TAGKEYS(                        XK_1,                      0)
  TAGKEYS(                        XK_2,                      1)
  TAGKEYS(                        XK_3,                      2)
  TAGKEYS(                        XK_4,                      3)
  TAGKEYS(                        XK_5,                      4)
  TAGKEYS(                        XK_6,                      5)
  TAGKEYS(                        XK_7,                      6)
  TAGKEYS(                        XK_8,                      7)
  TAGKEYS(                        XK_9,                      8)

  { SUPER,                       XK_q,      killclient,     {0} },
  { SUPER|ShiftMask,             XK_q,      quit,           {0} },
};



/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static const Button buttons[] = {
/*  click                event mask      button          function        argument */
  { ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
  { ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
  { ClkWinTitle,          0,              Button2,        zoom,           {0} },
  { ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
  { ClkClientWin,         SUPER,         Button1,        movemouse,      {0} },
  { ClkClientWin,         SUPER,         Button2,        togglefloating, {0} },
  { ClkClientWin,         SUPER,         Button3,        resizemouse,    {0} },
  { ClkTagBar,            0,              Button1,        view,           {0} },
  { ClkTagBar,            0,              Button3,        toggleview,     {0} },
  { ClkTagBar,            SUPER,         Button1,        tag,            {0} },
  { ClkTagBar,            SUPER,         Button3,        toggletag,      {0} },
};


