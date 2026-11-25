.class public Lcom/samsung/android/app/calendar/activity/AgendaActivity;
.super Lw8/a;
.source "SourceFile"

# interfaces


# static fields
.field public static final synthetic P:I


# instance fields
.field public M:LHb/b;

.field public N:LP6/i;

.field public O:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lw8/a;-><init>(I)V

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->O:Z

    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    invoke-static {p0}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0a05af

    if-nez v0, :cond_1

    invoke-static {p0}, LYd/c;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0700be

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput p0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const v1, 0x7f060a8d

    invoke-static {p0, v0, v1, v1}, LCf/j;->R(Landroidx/appcompat/app/o;Landroid/widget/FrameLayout;II)V

    return-void
.end method

.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, LYd/c;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/app/o;->attachBaseContext(Landroid/content/Context;)V

    return-void

    :cond_0
    invoke-static {p1}, Lh9/l;->T(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0, p1}, Lh9/l;->l(ILandroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/app/o;->attachBaseContext(Landroid/content/Context;)V

    invoke-static {p1}, Lh9/l;->w(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Landroidx/appcompat/app/r;->l(I)V

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-static {p0}, LYd/c;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/shim/SemAospBridge;->semIsPopOver(Landroid/content/res/Configuration;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, LCf/j;->z(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v1, v1, v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    int-to-float v2, v2

    cmpl-float v2, v5, v2

    if-ltz v2, :cond_0

    int-to-float v2, v4

    cmpg-float v2, v5, v2

    if-gez v2, :cond_0

    int-to-float v1, v1

    cmpl-float v1, v6, v1

    if-ltz v1, :cond_0

    int-to-float v0, v0

    cmpg-float v0, v6, v0

    if-ltz v0, :cond_1

    :cond_0
    invoke-static {p0}, LCf/j;->b(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v3

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/E;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p3, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v0, 0x2712

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p1, v0, :cond_3

    const-string p1, "searchFilterType"

    invoke-virtual {p3, p1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const-string p1, "moreSearchFilterColorResult"

    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    new-instance p3, LA6/c;

    const/4 v0, 0x7

    invoke-direct {p3, p0, p1, v0}, LA6/c;-><init>(Ljava/lang/Object;II)V

    const-wide/16 v0, 0x5

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string p1, "moreSearchFilterCalendarResult"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lnc/p;

    iget-object p2, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    invoke-static {p1}, Lnc/q;->a(Lnc/p;)Lnc/q;

    move-result-object p1

    iget-object p2, p2, LHb/b;->a:Lnc/i;

    invoke-virtual {p2, p1}, Lnc/i;->T(Lnc/q;)V

    goto :goto_0

    :cond_2
    const-string p1, "moreSearchFilterStickerResult"

    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    invoke-static {p1}, Lnc/q;->d(Ljava/lang/String;)Lnc/q;

    move-result-object p1

    iget-object p2, p2, LHb/b;->a:Lnc/i;

    invoke-virtual {p2, p1}, Lnc/i;->T(Lnc/q;)V

    :goto_0
    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    invoke-virtual {p0, v3}, LHb/b;->c(I)V

    return-void

    :cond_3
    const-string v0, "is_copy_event"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "beginTime"

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    const-string p1, "endTime"

    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    const-string p1, "copy_event_id"

    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {}, LGb/b;->a()LGb/b;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->N:LP6/i;

    invoke-virtual {p0}, LP6/i;->b()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2, p1}, Lxh/q;->J(Landroid/app/Activity;LGb/b;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {p0}, LP6/i;->b()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v2, LP6/e;

    sget-object v7, Lhf/a;->n:Lhf/a;

    invoke-direct/range {v2 .. v10}, LP6/e;-><init>(JJLhf/a;JLandroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_4
    const/16 v0, 0x2714

    if-ne p1, v0, :cond_8

    if-ne p2, v3, :cond_5

    invoke-virtual {p0, v3, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_5
    if-nez p2, :cond_a

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    iget-object p0, p0, LHb/b;->a:Lnc/i;

    if-nez p0, :cond_6

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lnc/i;->c:Lnc/j;

    check-cast p0, Lm9/K;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lm9/K;->Y:Lm9/S;

    iget-boolean p1, p1, Lm9/S;->k:Z

    if-eqz p1, :cond_a

    invoke-static {}, Ltf/a;->y()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, LCf/j;->z(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lm9/K;->r:Lm9/J0;

    iget-object p1, p0, Lm9/J0;->d:Landroid/os/Handler;

    iget-object p2, p0, Lm9/J0;->z:Lm9/H0;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_7
    iput-boolean v1, p0, Lm9/J0;->q:Z

    const-wide/16 v0, 0x258

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_8
    const/16 v0, 0x7b

    if-ne p1, v0, :cond_a

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    iget-object p0, p0, LHb/b;->a:Lnc/i;

    if-nez p0, :cond_9

    goto :goto_1

    :cond_9
    invoke-virtual {p0, p2, p3}, Lnc/i;->U(ILandroid/content/Intent;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    if-eqz v0, :cond_1

    iget-object v0, v0, LHb/b;->a:Lnc/i;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lnc/i;->B()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/E;->onBackPressed()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/appcompat/app/o;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {p0}, LCf/j;->Q(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->A()V

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    invoke-virtual {p0}, LHb/b;->b()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 14

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCreate(), context = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgendaActivity"

    invoke-static {v1, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/fragment/app/E;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "com.sec.android.calendar.SEARCH_EVENT"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->O:Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    :cond_1
    const-string v0, "appWidgetId"

    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_2

    move p1, v2

    goto :goto_0

    :cond_2
    move p1, v4

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lh9/l;->f0(Landroid/content/Intent;)Z

    move-result v0

    if-nez p1, :cond_3

    if-nez v0, :cond_3

    const p1, 0x7f010057

    invoke-static {p0, v4, p1, v4}, Lcom/samsung/shim/SemCompatBridge;->overrideActivityTransition(Landroid/app/Activity;III)V

    const p1, 0x7f010058

    invoke-static {p0, v2, v4, p1}, Lcom/samsung/shim/SemCompatBridge;->overrideActivityTransition(Landroid/app/Activity;III)V

    :cond_3
    const p1, 0x7f0d0009

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->setContentView(I)V

    invoke-static {p0}, LCf/j;->Q(Landroid/app/Activity;)V

    invoke-static {p0}, LRf/j;->v(Landroidx/appcompat/app/o;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LIb/i;

    const/16 v5, 0xd

    invoke-direct {v0, v5}, LIb/i;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance p1, LP6/i;

    invoke-direct {p1, p0}, LP6/i;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->N:LP6/i;

    new-instance p1, LHb/b;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-static {p0}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v0

    const-string v5, "fragmentManager"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lm9/W;

    invoke-direct {v5, p1, v0, v4}, Lm9/W;-><init>(Landroid/app/FragmentManager;ZZ)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, LC7/p;->f(Landroid/content/Context;)LC7/e;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, LEj/d;->S(Landroid/content/Context;)Le9/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_4
    move v3, v4

    :goto_1
    const/4 v6, 0x3

    const-string v7, ""

    if-nez v3, :cond_5

    move v10, v2

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lh9/l;->f0(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x4

    :goto_2
    move v10, v3

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    move-object v3, v7

    :goto_3
    const-string v8, "com.samsung.android.email.provider"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x5

    goto :goto_2

    :cond_8
    move v10, v6

    :goto_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_9

    move v13, v4

    goto :goto_6

    :cond_9
    const-string v8, "choice_limit"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v3, v8, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    :goto_5
    move v13, v3

    goto :goto_6

    :cond_a
    const v3, 0x989680

    goto :goto_5

    :goto_6
    invoke-static {}, LFh/a;->A()LFh/a;

    move-result-object v3

    iget-object v3, v3, LFh/a;->m:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    new-instance v8, Lnc/i;

    const/4 v9, 0x2

    invoke-direct/range {v8 .. v13}, Lnc/i;-><init>(IIJI)V

    invoke-virtual {v8, v5}, Lnc/i;->Z(Lm9/W;)V

    iput-object p1, v8, Lnc/i;->d:LC7/e;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "context"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LY7/g;

    invoke-direct {v3, p1, v2}, LY7/g;-><init>(Landroid/content/Context;Z)V

    iput-object v3, v8, Lnc/i;->f:LY7/g;

    iput-object v0, v8, Lnc/i;->g:Le9/a;

    invoke-virtual {v8}, Lnc/i;->a0()V

    new-instance p1, LP6/z;

    const/16 v0, 0x9

    invoke-direct {p1, p0, v0}, LP6/z;-><init>(Ljava/lang/Object;I)V

    iput-object p1, v8, Lnc/i;->s:LP6/z;

    new-instance p1, LP6/n;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LP6/n;-><init>(Ljava/lang/Object;I)V

    iput-object p1, v8, Lnc/i;->t:LGb/e;

    new-instance p1, LP6/o;

    invoke-direct {p1, p0}, LP6/o;-><init>(Lcom/samsung/android/app/calendar/activity/AgendaActivity;)V

    iput-object p1, v8, Lnc/i;->r:Lmc/f;

    new-instance p1, LP6/p;

    invoke-direct {p1, p0, v0}, LP6/p;-><init>(Lcom/samsung/android/app/calendar/activity/AgendaActivity;I)V

    iput-object p1, v8, Lnc/i;->j:LGb/d;

    new-instance p1, LP6/p;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, LP6/p;-><init>(Lcom/samsung/android/app/calendar/activity/AgendaActivity;I)V

    iput-object p1, v8, Lnc/i;->k:LGb/d;

    new-instance p1, LP6/p;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, LP6/p;-><init>(Lcom/samsung/android/app/calendar/activity/AgendaActivity;I)V

    iput-object p1, v8, Lnc/i;->l:LGb/d;

    new-instance p1, LP6/q;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LP6/q;-><init>(Ljava/lang/Object;I)V

    iput-object p1, v8, Lnc/i;->u:LP6/q;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_c

    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "com.samsung.android.calendar.SEARCH_IN_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_b
    move v0, v2

    goto :goto_7

    :cond_c
    move v0, v4

    :goto_7
    if-eqz v0, :cond_e

    iput-boolean v2, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->O:Z

    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_d

    goto :goto_8

    :cond_d
    move-object v7, p1

    :goto_8
    invoke-static {v7}, Lcom/samsung/shim/SemCompatBridge;->isBlank(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {v7}, Lnc/q;->c(Ljava/lang/String;)Lnc/q;

    move-result-object v0

    iput-object v0, v8, Lnc/i;->D:Lnc/q;

    iget-object v3, v8, Lnc/i;->d:LC7/e;

    iget-object v0, v0, Lnc/q;->n:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "searchString"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v3, LC7/e;->m:Landroid/content/Context;

    invoke-static {}, LFh/a;->A()LFh/a;

    move-result-object v5

    iget-object v5, v5, LFh/a;->m:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v9

    invoke-static {v3, v0, v9, v10}, LC7/p;->l(Landroid/content/Context;Ljava/lang/String;J)V

    iput-boolean p1, v8, Lnc/i;->F:Z

    :cond_e
    iget-object p1, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    iput-object v8, p1, LHb/b;->a:Lnc/i;

    new-instance v0, LHb/a;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3}, LHb/a;-><init>(LHb/b;I)V

    iput-object v0, v8, Lnc/i;->h:LGb/d;

    new-instance v0, LHb/a;

    const/4 v3, 0x2

    invoke-direct {v0, p1, v3}, LHb/a;-><init>(LHb/b;I)V

    iput-object v0, v8, Lnc/i;->i:LGb/d;

    new-instance v0, LP6/m;

    invoke-direct {v0, p0}, LP6/m;-><init>(Lcom/samsung/android/app/calendar/activity/AgendaActivity;)V

    new-instance v3, Lnj/a;

    invoke-direct {v3, p0}, Lnj/a;-><init>(Landroidx/appcompat/app/o;)V

    invoke-static {p0}, LR7/j;->f(Landroid/content/Context;)LR7/i;

    move-result-object v5

    new-instance v7, LWc/c;

    invoke-direct {v7, p0}, LWc/c;-><init>(Landroid/content/Context;)V

    new-instance v8, Lta/f;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object p0, v8, Lta/f;->m:Landroidx/appcompat/app/o;

    new-instance v9, LOc/e;

    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    iput-object v3, v9, LOc/e;->b:Lnj/a;

    iput-object v5, v9, LOc/e;->c:LR7/i;

    iput-object v7, v9, LOc/e;->d:LWc/c;

    iput-object v8, v9, LOc/e;->a:Lta/f;

    iput-object v0, v9, LOc/e;->f:LP6/m;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LL9/a;

    const/16 v3, 0x15

    invoke-direct {v0, v9, v3}, LL9/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, LFd/a;->P(Landroid/content/Context;)LI3/w;

    move-result-object v3

    new-instance v5, Lx9/f;

    invoke-direct {v5, p0}, Lx9/f;-><init>(Landroidx/appcompat/app/o;)V

    new-instance v6, Lwc/c;

    invoke-direct {v6, v0}, Lwc/c;-><init>(Ljava/lang/Integer;)V

    iput-object v3, v6, Lwc/c;->c:LI3/w;

    iput-object v5, v6, Lwc/c;->b:Lx9/f;

    if-eqz p1, :cond_f

    iput-object v6, p1, LHb/b;->c:Lwc/c;

    new-instance v0, LHb/a;

    const/4 v3, 0x0

    invoke-direct {v0, p1, v3}, LHb/a;-><init>(LHb/b;I)V

    iput-object v0, v6, Lwc/c;->d:LGb/d;

    :cond_f
    invoke-virtual {v6}, Lwc/c;->c()V

    iget-object p1, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    iget-object v0, p1, LHb/b;->a:Lnc/i;

    if-eqz v0, :cond_11

    iget-object v3, p1, LHb/b;->b:LOc/e;

    if-eqz v3, :cond_11

    iget-object p1, p1, LHb/b;->c:Lwc/c;

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lnc/i;->n(Lmf/e;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, LP6/l;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, LP6/l;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    move-object p1, v0

    const-string v0, "Couldn\'t apply seamless soft input animation, "

    invoke-static {p1, v0, v1}, LMe/a;->q(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    invoke-static {}, LGm/d;->b()LGm/d;

    move-result-object p1

    invoke-virtual {p1, p0}, LGm/d;->e(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    invoke-static {}, LGm/d;->b()LGm/d;

    move-result-object p1

    invoke-virtual {p1, p0}, LGm/d;->j(Ljava/lang/Object;)V

    :cond_10
    return-void

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Presenter is not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final onDestroy()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy(), context = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgendaActivity"

    invoke-static {v1, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroidx/appcompat/app/o;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    iget-object v1, v0, LHb/b;->a:Lnc/i;

    invoke-virtual {v1}, Lnc/i;->stop()V

    iget-object v1, v0, LHb/b;->a:Lnc/i;

    invoke-virtual {v1}, Lnc/i;->N()V

    iget-object v1, v0, LHb/b;->b:LOc/e;

    invoke-virtual {v1}, LOc/e;->b()V

    iget-object v0, v0, LHb/b;->c:Lwc/c;

    invoke-virtual {v0}, Lwc/c;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    sget-object v0, Lsh/h;->a:Lsh/c;

    invoke-virtual {v0}, Lsh/c;->b()V

    invoke-static {}, LGm/d;->b()LGm/d;

    move-result-object v0

    invoke-virtual {v0, p0}, LGm/d;->l(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/samsung/shim/SemCompatBridge;->getOnBackInvokedDispatcher(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/shim/SemCompatBridge;->unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/16 v0, 0x54

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    iget-object v0, v0, LHb/b;->a:Lnc/i;

    iget-object v0, v0, Lnc/i;->c:Lnc/j;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast v0, Lm9/K;

    invoke-static {p1}, LRf/p;->c(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, v0, Lm9/K;->Y:Lm9/S;

    iput-boolean v1, v0, Lm9/S;->c:Z

    :cond_2
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v1

    iget-object v0, v0, LHb/b;->a:Lnc/i;

    iget-object v0, v0, Lnc/i;->c:Lnc/j;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Lm9/K;

    invoke-static {p1}, LRf/p;->c(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Lm9/K;->Y:Lm9/S;

    iput-boolean v3, v2, Lm9/S;->c:Z

    :cond_1
    if-eqz v1, :cond_3

    const/16 v2, 0x1d

    if-ne p1, v2, :cond_3

    iget-object v1, v0, Lm9/K;->F:Lm9/d;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lm9/d;->b()V

    :cond_2
    iget-object v0, v0, Lm9/K;->r:Lm9/J0;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lm9/J0;->i()Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const/16 v1, 0x20

    if-ne p1, v1, :cond_4

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lm9/K;->r(Landroid/view/View;Z)V

    :cond_4
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 3

    .line 12
    invoke-super {p0, p1}, Ld/j;->onNewIntent(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->handleNewIntentFilter(Landroid/content/Intent;)V

    .line 13
    const-string v0, "android.intent.action.SEARCH"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.samsung.android.calendar.SEARCH_IN_APP"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    :cond_0
    const-string v0, "query"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 15
    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, ""

    .line 16
    :cond_1
    iget-object p0, p0, LHb/b;->a:Lnc/i;

    .line 17
    iget v0, p0, Lnc/i;->I:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 18
    iget-object p0, p0, Lnc/i;->c:Lnc/j;

    check-cast p0, Lm9/K;

    .line 19
    iget-object v0, p0, Lm9/K;->r:Lm9/J0;

    const/4 v2, 0x0

    .line 20
    invoke-virtual {v0, p1, v2}, Lm9/J0;->p(Ljava/lang/String;Z)V

    .line 21
    iget-object p0, p0, Lm9/K;->r:Lm9/J0;

    invoke-virtual {p0, v1}, Lm9/J0;->n(Z)V

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 23
    const-string p0, "2"

    goto :goto_0

    :cond_2
    const-string p0, "1"

    .line 24
    :goto_0
    const-string p1, "011"

    const-string v0, "1113"

    invoke-static {p1, v0, p0}, LRf/j;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private final handleNewIntentFilter(Landroid/content/Intent;)V
    .locals 2

    const-string v1, "searchOpenFilterType"

    const/4 v0, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    return-void

    :cond_0
    const-string v1, "searchFilterCalendarList"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->N:LP6/i;

    invoke-virtual {v1, p1}, LP6/i;->l(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    invoke-virtual {p0, v0}, LHb/b;->c(I)V

    return-void

    :cond_1
    const-string v1, "searchFilterColorList"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->N:LP6/i;

    invoke-virtual {v1, p1}, LP6/i;->m(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    invoke-virtual {p0, v0}, LHb/b;->c(I)V

    return-void

    :cond_2
    const-string v1, "searchFilterStickerList"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->N:LP6/i;

    invoke-virtual {v1, p1}, LP6/i;->n(Ljava/util/ArrayList;)V

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    invoke-virtual {p0, v0}, LHb/b;->c(I)V

    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    invoke-virtual {p0}, LHb/b;->b()V

    return-void
.end method

.method public final onResume()V
    .locals 4

    invoke-super {p0}, Landroidx/fragment/app/E;->onResume()V

    invoke-static {p0}, LKm/d;->X(Landroid/content/Context;)V

    new-instance v0, LFa/f;

    invoke-direct {v0, p0}, LFa/f;-><init>(Landroid/app/Activity;)V

    sget-object v1, Lgh/a;->c:[Ljava/lang/String;

    iput-object v1, v0, LFa/f;->g:[Ljava/io/Serializable;

    new-instance v1, LB9/P1;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, LB9/P1;-><init>(Ljava/lang/Object;I)V

    new-instance v2, LL9/h;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, LL9/h;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1, v2}, LFa/f;->l(LWg/i;LWg/h;)V

    invoke-virtual {v0}, LFa/f;->a()LWg/g;

    move-result-object p0

    invoke-virtual {p0}, LWg/g;->e()Ljava/lang/Integer;

    return-void
.end method

.method public onSearchSettingChange(Lm9/F0;)V
    .locals 0
    .annotation runtime LGm/j;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/AgendaActivity;->M:LHb/b;

    iget-object p0, p0, LHb/b;->a:Lnc/i;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnc/i;->X(Z)V

    :cond_0
    return-void
.end method

.method public final onStop()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/o;->onStop()V

    const/4 v0, 0x0

    sput-object v0, LRf/i;->h:Ljava/lang/Boolean;

    sput-object v0, LRf/i;->i:Ljava/lang/Boolean;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setShowWhenLocked(Z)V

    return-void
.end method

.method public updateOnBackInvokedCallbackWithPriority(Lug/a;)V
    .locals 1
    .annotation runtime LGm/j;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean p1, p1, Lug/a;->a:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x2

    :goto_0
    invoke-static {p0}, Lcom/samsung/shim/SemCompatBridge;->getOnBackInvokedDispatcher(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/samsung/shim/SemCompatBridge;->registerOnBackInvokedCallback(Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
