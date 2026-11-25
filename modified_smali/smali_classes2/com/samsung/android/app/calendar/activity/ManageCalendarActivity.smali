.class public final Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;
.super Lw8/a;
.source "SourceFile"

# interfaces
.implements Ldd/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;",
        "Lw8/a;",
        "Ldd/a;",
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
.field public static final synthetic R:I


# instance fields
.field public final M:Lu/b;

.field public N:LP6/i;

.field public O:Z

.field public P:Z

.field public Q:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lw8/a;-><init>(I)V

    new-instance v0, Lu/b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->M:Lu/b;

    new-instance v0, LP6/i;

    invoke-direct {v0, p0}, LP6/i;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->N:LP6/i;

    return-void
.end method


# virtual methods
.method public final attachBaseContext(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newBase"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LYd/c;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroidx/appcompat/app/o;->attachBaseContext(Landroid/content/Context;)V

    const/4 p0, -0x1

    invoke-static {p0}, Landroidx/appcompat/app/r;->l(I)V

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

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lw8/a;->onActivityResult(IILandroid/content/Intent;)V

    const-string v2, "onActivityResult - requestCode: "

    const-string v0, ", resultCode: "

    const-string v1, "ManageCalendarActivity"

    invoke-static {p1, v2, p2, v0, v1}, Lcom/samsung/android/rubin/sdk/module/fence/a;->u(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x37

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->M:Lu/b;

    if-ne p2, v2, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p3, p1}, Lu/b;->v(Landroid/content/Intent;Z)V

    return-void

    :cond_0
    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    iget-object p0, p0, Lu/b;->m:Ljava/lang/Object;

    check-cast p0, LDc/d;

    if-eqz p0, :cond_4

    const/4 p1, 0x0

    iput-object p1, p0, LDc/d;->k:LQb/a;

    return-void

    :cond_1
    const/16 p2, 0x2bd

    if-eq p1, p2, :cond_3

    const/16 p2, 0x2c0

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lu/b;->v(Landroid/content/Intent;Z)V

    return-void

    :cond_3
    iget-object p0, p0, Lu/b;->m:Ljava/lang/Object;

    check-cast p0, LDc/d;

    if-eqz p0, :cond_4

    iget-object p1, p0, LDc/d;->a:LY7/g;

    if-eqz p1, :cond_4

    iget-object p1, p0, LDc/d;->l:Ljava/util/List;

    const-string p2, "calendarGroups"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, LL7/n;

    invoke-direct {p2, p1}, LL7/n;-><init>(Ljava/util/List;)V

    invoke-static {p2}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object p1

    new-instance p2, LDc/a;

    const/16 p3, 0xd

    invoke-direct {p2, p0, p3}, LDc/a;-><init>(LDc/d;I)V

    invoke-virtual {p1, p2}, Llf/g;->b(Llf/d;)Llf/a;

    :cond_4
    :goto_0
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/o;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/shim/SemAospBridge;->semIsPopOver(Landroid/content/res/Configuration;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->O:Z

    invoke-static {p0}, LCf/j;->Q(Landroid/app/Activity;)V

    const p1, 0x7f0a04a0

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    sget v0, Lue/b;->theme_color:I

    sget v1, Lue/b;->common_window_background_color:I

    invoke-static {p0, p1, v0, v1}, LCf/j;->R(Landroidx/appcompat/app/o;Landroid/widget/FrameLayout;II)V

    invoke-virtual {p0}, Landroidx/appcompat/app/o;->u()Landroidx/appcompat/app/b;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->P:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->O:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {p1, p0}, Landroidx/appcompat/app/b;->n(Z)V

    :cond_2
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroidx/fragment/app/E;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0022

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->setContentView(I)V

    invoke-static {p0}, LCf/j;->Q(Landroid/app/Activity;)V

    new-instance p1, LP6/i;

    invoke-direct {p1, p0}, LP6/i;-><init>(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->N:LP6/i;

    new-instance p1, LDc/d;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, LDc/d;->l:Ljava/util/List;

    invoke-virtual {p0}, Landroidx/fragment/app/E;->r()Landroidx/fragment/app/U;

    move-result-object v0

    const-string v1, "getSupportFragmentManager(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, LL9/p;

    invoke-direct {v1, v0}, LL9/p;-><init>(Landroidx/fragment/app/U;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "getApplicationContext(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LY7/g;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, LY7/g;-><init>(Landroid/content/Context;Z)V

    new-instance v4, Lnh/b;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lnh/b;-><init>(Landroid/content/Context;I)V

    iput-object v4, v2, LY7/g;->v:Lnh/b;

    iput-object v2, p1, LDc/d;->a:LY7/g;

    iput-object v1, p1, LDc/d;->b:LL9/p;

    new-instance v0, LS7/w;

    invoke-direct {v0, p0}, LS7/w;-><init>(Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;)V

    iput-object v0, p1, LDc/d;->d:LS7/w;

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/l;->R(Landroid/content/Context;)LS7/s;

    move-result-object v0

    iput-object v0, p1, LDc/d;->e:LS7/s;

    new-instance v0, LG9/j;

    invoke-direct {v0, p0}, LG9/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, LDc/d;->f:LG9/j;

    new-instance v0, LP6/I0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LP6/I0;-><init>(Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;I)V

    iput-object v0, p1, LDc/d;->h:LP6/I0;

    new-instance v0, LP6/I0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LP6/I0;-><init>(Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;I)V

    iput-object v0, p1, LDc/d;->i:LP6/I0;

    new-instance v0, LP6/I0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LP6/I0;-><init>(Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;I)V

    iput-object v0, p1, LDc/d;->g:LP6/I0;

    new-instance v0, LP6/I0;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, LP6/I0;-><init>(Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;I)V

    iput-object v0, p1, LDc/d;->j:LP6/I0;

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->M:Lu/b;

    iput-object p1, v0, Lu/b;->m:Ljava/lang/Object;

    iget-object v0, p1, LDc/d;->b:LL9/p;

    if-eqz v0, :cond_3

    new-instance v1, LL9/n;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LL9/n;-><init>(LL9/p;I)V

    invoke-static {v1}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v1

    new-instance v2, LDc/a;

    const/4 v4, 0x0

    invoke-direct {v2, p1, v4}, LDc/a;-><init>(LDc/d;I)V

    invoke-virtual {v1, v2}, Llf/g;->b(Llf/d;)Llf/a;

    new-instance v1, LL9/n;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, LL9/n;-><init>(LL9/p;I)V

    invoke-static {v1}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v1

    new-instance v2, LDc/a;

    const/16 v4, 0xa

    invoke-direct {v2, p1, v4}, LDc/a;-><init>(LDc/d;I)V

    invoke-virtual {v1, v2}, Llf/g;->e(Llf/f;)V

    new-instance v1, LL9/n;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, LL9/n;-><init>(LL9/p;I)V

    invoke-static {v1}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v1

    new-instance v2, LDc/a;

    const/16 v4, 0xc

    invoke-direct {v2, p1, v4}, LDc/a;-><init>(LDc/d;I)V

    invoke-virtual {v1, v2}, Llf/g;->e(Llf/f;)V

    iget-object p1, v0, LL9/p;->m:Landroidx/fragment/app/U;

    const-string v1, "ManageCalendarFragment"

    invoke-virtual {p1, v1}, Landroidx/fragment/app/U;->E(Ljava/lang/String;)Landroidx/fragment/app/z;

    move-result-object v2

    if-eqz v2, :cond_1

    check-cast v2, LL9/l;

    iput-object v2, v0, LL9/p;->n:LL9/l;

    iget-object p1, v0, LL9/p;->o:Llf/h;

    if-eqz p1, :cond_0

    invoke-interface {p1, v2}, Llf/h;->c(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, v0, LL9/p;->p:Llf/h;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Llf/h;->a()V

    goto :goto_0

    :cond_1
    iget-object v2, v0, LL9/p;->n:LL9/l;

    if-nez v2, :cond_2

    new-instance v2, LL9/l;

    invoke-direct {v2}, LL9/l;-><init>()V

    iput-object v2, v0, LL9/p;->n:LL9/l;

    :cond_2
    iget-object v2, v0, LL9/p;->n:LL9/l;

    if-eqz v2, :cond_3

    new-instance v4, LL9/o;

    invoke-direct {v4, v0}, LL9/o;-><init>(LL9/p;)V

    iput-object v4, v2, LL9/l;->A0:LL9/o;

    new-instance v0, Landroidx/fragment/app/a;

    invoke-direct {v0, p1}, Landroidx/fragment/app/a;-><init>(Landroidx/fragment/app/U;)V

    const p1, 0x7f0a04a0

    invoke-virtual {v0, p1, v2, v1}, Landroidx/fragment/app/a;->j(ILandroidx/fragment/app/z;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v3}, Landroidx/fragment/app/a;->e(ZZ)I

    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string v1, "key_dismiss_group_notification"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "group_id"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ls8/c;->b:Landroidx/lifecycle/O;

    invoke-virtual {v2, p0}, Landroidx/lifecycle/O;->F(Landroid/content/Context;)Ls8/c;

    invoke-static {p0, v1}, Ls8/c;->n(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    const-string v1, "from_tips"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->Q:Z

    :cond_5
    invoke-virtual {p0}, Landroidx/appcompat/app/o;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/shim/SemAospBridge;->semIsPopOver(Landroid/content/res/Configuration;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->O:Z

    if-eqz p1, :cond_6

    const-string v1, "key_enable_home_as_up"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_1

    :cond_6
    move p1, v0

    :goto_1
    iput-boolean p1, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->P:Z

    const p1, 0x7f0a0b01

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    new-instance v1, LP6/S;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, LP6/S;-><init>(Ljava/lang/Object;I)V

    iget-boolean v2, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->P:Z

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->O:Z

    if-nez v2, :cond_7

    goto :goto_2

    :cond_7
    move v3, v0

    :cond_8
    :goto_2
    invoke-static {p0, p1, v1, v3}, Lxh/q;->a0(Landroid/app/Activity;Landroidx/appcompat/widget/Toolbar;Landroid/view/View$OnClickListener;Z)V

    const p1, 0x7f0a0257

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p1, p0}, Lxh/q;->u0(Lcom/google/android/material/appbar/CollapsingToolbarLayout;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/ManageCalendarActivity;->M:Lu/b;

    iget-object v0, v0, Lu/b;->m:Ljava/lang/Object;

    check-cast v0, LDc/d;

    if-eqz v0, :cond_6

    iget-object v1, v0, LDc/d;->c:LDc/e;

    if-eqz v1, :cond_2

    check-cast v1, LL9/l;

    sget-object v2, LL9/m;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Landroidx/fragment/app/z;->D()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, LL9/m;->g:Ljava/util/WeakHashMap;

    monitor-enter v2

    :try_start_0
    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LL9/m;

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    iput-object v3, v1, LL9/m;->a:Llf/h;

    iput-object v3, v1, LL9/m;->b:Llf/h;

    iput-object v3, v1, LL9/m;->c:Llf/h;

    iput-object v3, v1, LL9/m;->d:Llf/h;

    iput-object v3, v1, LL9/m;->e:Llf/h;

    iput-object v3, v1, LL9/m;->f:Llf/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_2
    :goto_0
    iget-object v1, v0, LDc/d;->a:LY7/g;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, LY7/g;->a()V

    :cond_3
    iget-object v1, v0, LDc/d;->d:LS7/w;

    if-eqz v1, :cond_4

    iget-object v2, v1, LS7/w;->n:LS7/H;

    invoke-virtual {v2}, LS7/H;->e()V

    iget-object v1, v1, LS7/w;->p:LYj/a;

    invoke-virtual {v1}, LYj/a;->f()V

    :cond_4
    iget-object v1, v0, LDc/d;->e:LS7/s;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, LS7/s;->b()V

    :cond_5
    iget-object v0, v0, LDc/d;->f:LG9/j;

    if-eqz v0, :cond_6

    iget-object v0, v0, LG9/j;->m:LS7/D;

    iget-object v1, v0, LS7/D;->n:LS7/H;

    invoke-virtual {v1}, LS7/H;->e()V

    iget-object v0, v0, LS7/D;->o:LYj/a;

    invoke-virtual {v0}, LYj/a;->dispose()V

    :cond_6
    invoke-super {p0}, Landroidx/appcompat/app/o;->onDestroy()V

    return-void
.end method

.method public final onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/E;->onResume()V

    const v0, 0x7f0a04a0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    sget v1, Lue/b;->theme_color:I

    sget v2, Lue/b;->common_window_background_color:I

    invoke-static {p0, v0, v1, v2}, LCf/j;->R(Landroidx/appcompat/app/o;Landroid/widget/FrameLayout;II)V

    return-void
.end method

.method public final w(Ltk/j;)V
    .locals 1

    invoke-virtual {p0}, Landroidx/fragment/app/E;->r()Landroidx/fragment/app/U;

    move-result-object p0

    const v0, 0x7f0a04a0

    invoke-virtual {p0, v0}, Landroidx/fragment/app/U;->D(I)Landroidx/fragment/app/z;

    move-result-object p0

    instance-of v0, p0, Ldd/a;

    if-eqz v0, :cond_0

    check-cast p0, Ldd/a;

    invoke-interface {p0, p1}, Ldd/a;->w(Ltk/j;)V

    :cond_0
    return-void
.end method
