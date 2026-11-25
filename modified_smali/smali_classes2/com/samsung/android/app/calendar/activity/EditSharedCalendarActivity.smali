.class public final Lcom/samsung/android/app/calendar/activity/EditSharedCalendarActivity;
.super Landroidx/appcompat/app/o;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/samsung/android/app/calendar/activity/EditSharedCalendarActivity;",
        "Landroidx/appcompat/app/o;",
        "<init>",
        "()V",
        "SamsungCalendar_commonRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic N:I


# instance fields
.field public L:La4/b;

.field public final M:LFb/w;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/o;-><init>()V

    new-instance v0, LFb/w;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LFb/w;-><init>(Landroidx/appcompat/app/o;I)V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/EditSharedCalendarActivity;->M:LFb/w;

    return-void
.end method


# virtual methods
.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/o;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p2, 0x3e9

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/EditSharedCalendarActivity;->L:La4/b;

    if-eqz p0, :cond_0

    iget-object p0, p0, La4/b;->n:Ljava/lang/Object;

    check-cast p0, LI3/o;

    if-eqz p0, :cond_0

    iget-object p0, p0, LI3/o;->p:Ljava/lang/Object;

    check-cast p0, LG9/d;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, LG9/d;->F0:Z

    :cond_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LCf/j;->Q(Landroid/app/Activity;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/o;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/E;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ld/j;->l()Ld/r;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/EditSharedCalendarActivity;->M:LFb/w;

    invoke-virtual {p1, p0, v0}, Ld/r;->a(Landroidx/lifecycle/u;LFb/w;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "calendar_child"

    const-class v1, Lcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;

    invoke-static {p1, v0, v1}, Lcom/samsung/shim/SemCompatBridge;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;

    const-string v0, "EditSharedCalendarActivity"

    if-nez p1, :cond_1

    const-string p0, "CalendarChild is null by intent"

    invoke-static {v0, p0}, LYd/d;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "group_calendar_data"

    const-class v3, Lcom/samsung/android/libcalendar/common/data/GroupCalendarData;

    invoke-static {v1, v2, v3}, Lcom/samsung/shim/SemCompatBridge;->getParcelableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/libcalendar/common/data/GroupCalendarData;

    if-nez v1, :cond_2

    const-string p0, "GroupData is null by intent"

    invoke-static {v0, p0}, LYd/d;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    const v0, 0x7f0d0022

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/o;->setContentView(I)V

    const v0, 0x7f13032f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v0, La4/b;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, La4/b;-><init>(IB)V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/EditSharedCalendarActivity;->L:La4/b;

    new-instance v0, LP6/i;

    invoke-direct {v0, p0}, LP6/i;-><init>(Landroid/app/Activity;)V

    new-instance v2, LI3/o;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LI3/o;-><init>(IZ)V

    iget-object v3, p1, Lcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;->D:Ljava/lang/String;

    const-string v4, "groupId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p1, Lcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;->E:Ljava/lang/String;

    new-instance v5, LA3/F;

    invoke-direct {v5, p0, v3, v4}, LA3/F;-><init>(Lcom/samsung/android/app/calendar/activity/EditSharedCalendarActivity;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v5, v2, LI3/o;->n:Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/fragment/app/E;->r()Landroidx/fragment/app/U;

    move-result-object v3

    new-instance v4, Lnj/a;

    invoke-direct {v4, v3, p1, v1}, Lnj/a;-><init>(Landroidx/fragment/app/U;Lcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;Lcom/samsung/android/libcalendar/common/data/GroupCalendarData;)V

    iput-object v4, v2, LI3/o;->o:Ljava/lang/Object;

    new-instance p1, LP6/g0;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, LP6/g0;-><init>(LP6/i;I)V

    iput-object p1, v2, LI3/o;->q:Ljava/lang/Object;

    iget-object p1, p0, Lcom/samsung/android/app/calendar/activity/EditSharedCalendarActivity;->L:La4/b;

    if-eqz p1, :cond_3

    iput-object v2, p1, La4/b;->n:Ljava/lang/Object;

    :cond_3
    const v0, 0x7f0a04a0

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    iget-object p1, p1, La4/b;->n:Ljava/lang/Object;

    check-cast p1, LI3/o;

    if-eqz p1, :cond_9

    iget-object v2, p1, LI3/o;->o:Ljava/lang/Object;

    check-cast v2, Lnj/a;

    if-eqz v2, :cond_9

    new-instance v3, LG9/e;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, LG9/e;-><init>(Lnj/a;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v3

    new-instance v4, LBc/a;

    const/4 v5, 0x0

    invoke-direct {v4, p1, v5}, LBc/a;-><init>(LI3/o;I)V

    invoke-virtual {v3, v4}, Llf/g;->b(Llf/d;)Llf/a;

    new-instance v3, LG9/e;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, LG9/e;-><init>(Lnj/a;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v3

    new-instance v4, LBc/a;

    const/4 v5, 0x1

    invoke-direct {v4, p1, v5}, LBc/a;-><init>(LI3/o;I)V

    invoke-virtual {v3, v4}, Llf/g;->e(Llf/f;)V

    iget-object p1, v2, Lnj/a;->n:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/U;

    if-eqz p1, :cond_8

    const-string v3, "EditSharedCalendarFragment"

    invoke-virtual {p1, v3}, Landroidx/fragment/app/U;->E(Ljava/lang/String;)Landroidx/fragment/app/z;

    move-result-object v4

    check-cast v4, LG9/d;

    iput-object v4, v2, Lnj/a;->s:Ljava/lang/Object;

    if-nez v4, :cond_4

    new-instance v4, LG9/d;

    invoke-direct {v4}, LG9/d;-><init>()V

    iput-object v4, v2, Lnj/a;->s:Ljava/lang/Object;

    :cond_4
    iget-object v4, v2, Lnj/a;->s:Ljava/lang/Object;

    check-cast v4, LG9/d;

    if-eqz v4, :cond_5

    new-instance v5, LG9/f;

    invoke-direct {v5, v2}, LG9/f;-><init>(Lnj/a;)V

    iput-object v5, v4, LG9/d;->A0:LG9/f;

    :cond_5
    if-eqz v4, :cond_6

    iget-object v5, v2, Lnj/a;->o:Ljava/lang/Object;

    check-cast v5, Lcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;

    iput-object v5, v4, LG9/d;->n0:Lcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;

    :cond_6
    if-eqz v4, :cond_7

    iget-object v2, v2, Lnj/a;->p:Ljava/lang/Object;

    check-cast v2, Lcom/samsung/android/libcalendar/common/data/GroupCalendarData;

    iput-object v2, v4, LG9/d;->o0:Lcom/samsung/android/libcalendar/common/data/GroupCalendarData;

    :cond_7
    if-eqz v4, :cond_9

    new-instance v2, Landroidx/fragment/app/a;

    invoke-direct {v2, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/U;)V

    invoke-virtual {v2, v0, v4, v3}, Landroidx/fragment/app/a;->j(ILandroidx/fragment/app/z;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v1}, Landroidx/fragment/app/a;->e(ZZ)I

    goto :goto_0

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "fragmentManager must not null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_0
    const p1, 0x7f0a0b01

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    new-instance v2, LP6/S;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, LP6/S;-><init>(Ljava/lang/Object;I)V

    invoke-static {p0, p1, v2, v1}, Lxh/q;->a0(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroid/view/View$OnClickListener;Z)V

    const p1, 0x7f0a0257

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {p1, v2}, Lxh/q;->u0(Lcom/google/android/material/appbar/CollapsingToolbarLayout;Ljava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    sget v0, Lue/b;->theme_color:I

    sget v2, Lue/b;->common_window_background_color:I

    invoke-static {p0, p1, v0, v2}, LCf/j;->R(Landroidx/appcompat/app/o;Landroid/widget/FrameLayout;II)V

    invoke-static {p0}, LCf/j;->Q(Landroid/app/Activity;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/EditSharedCalendarActivity;->L:La4/b;

    if-eqz v0, :cond_0

    iget-object v0, v0, La4/b;->n:Ljava/lang/Object;

    check-cast v0, LI3/o;

    if-eqz v0, :cond_0

    iget-object v0, v0, LI3/o;->n:Ljava/lang/Object;

    check-cast v0, LA3/F;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, LA3/F;->d()V

    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/o;->onDestroy()V

    return-void
.end method
