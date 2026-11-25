.class public Lcom/samsung/android/app/calendar/CalendarApplication;
.super Lv8/b;
.source "SourceFile"

# interfaces
.implements Lz3/a;


# static fields
.field public static final synthetic m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "APP_Application newInstance"

    invoke-static {v0}, LRf/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    invoke-static {}, LRf/j;->f()V

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Application;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p0, LIe/b;->n:LIe/b;

    monitor-enter p0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, LIe/b;->m:LI3/j;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final onCreate()V
    .locals 4

    const-string v0, "APP_Application onCreate"

    invoke-static {v0}, LRf/j;->a(Ljava/lang/String;)V

    const-string v0, "APP_Application super.onCreate"

    invoke-static {v0}, LRf/j;->a(Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    invoke-static {p0}, Lcom/samsung/shim/SemCalendarAnimator;->install(Landroid/app/Application;)V

    invoke-static {}, LRf/j;->f()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lh9/l;->o0(Landroid/content/Context;)V

    invoke-static {v0}, Lh9/l;->p0(Landroid/content/Context;)V

    new-instance v0, LEb/c;

    const/16 v1, 0x16

    invoke-direct {v0, v1}, LEb/c;-><init>(I)V

    sput-object v0, Llc/a;->a:LEb/c;

    invoke-static {}, LYd/d;->j()V

    new-instance v0, Lh4/b;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lh4/b;-><init>(I)V

    new-instance v1, Lb0/f;

    const/16 v2, 0x1a

    invoke-direct {v1, v0, v2}, Lb0/f;-><init>(Ljava/lang/Object;I)V

    sput-object v1, Llg/d;->a:Lb0/f;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LO6/a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LO6/a;-><init>(Lcom/samsung/android/app/calendar/CalendarApplication;I)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "APP_Application initBixby"

    invoke-static {v0}, LRf/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->initialize(Landroid/content/Context;)V

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getInstance()Lcom/samsung/android/sdk/bixby2/Sbixby;

    move-result-object p0

    const-string v0, "sBixby"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LU6/d;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LU6/d;-><init>(I)V

    const-string v1, "FindEvents"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    new-instance v0, LU6/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LU6/b;-><init>(I)V

    const-string v1, "AddEvent"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    new-instance v0, LU6/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LU6/b;-><init>(I)V

    const-string v1, "EditEvent"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    new-instance v0, LU6/d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LU6/d;-><init>(I)V

    const-string v1, "DeleteEvent"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    new-instance v0, LU6/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LU6/d;-><init>(I)V

    const-string v1, "GetPermissionSettings"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    new-instance v0, LU6/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, LU6/d;-><init>(I)V

    const-string v1, "SynchronizeCalendar"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    new-instance v0, LU6/g;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;-><init>()V

    const-string v1, "ViewCalendar"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    new-instance v0, LU6/i;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;-><init>()V

    const-string v1, "OpenEventPage"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    new-instance v0, LU6/e;

    invoke-direct {v0}, Lcom/samsung/android/sdk/bixby2/action/ActionHandler;-><init>()V

    const-string v1, "ShareEvent"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    new-instance v0, LU6/d;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LU6/d;-><init>(I)V

    const-string v1, "Dismiss"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    new-instance v0, LU6/d;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, LU6/d;-><init>(I)V

    const-string v1, "Snooze"

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/sdk/bixby2/Sbixby;->addActionHandler(Ljava/lang/String;Lcom/samsung/android/sdk/bixby2/action/ActionHandler;)V

    invoke-static {}, LRf/j;->f()V

    invoke-static {}, LRf/j;->f()V

    return-void
.end method

.method public final onLowMemory()V
    .locals 3

    invoke-super {p0}, Landroid/app/Application;->onLowMemory()V

    const-string v0, "CalendarApplication"

    const-string v1, "onLowMemory"

    invoke-static {v0, v1}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p0}, Lcom/bumptech/glide/b;->a(Landroid/content/Context;)Lcom/bumptech/glide/b;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, LL4/q;->a()V

    iget-object v0, p0, Lcom/bumptech/glide/b;->n:Lt4/c;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, LL4/m;->e(J)V

    iget-object v0, p0, Lcom/bumptech/glide/b;->m:Ls4/a;

    invoke-interface {v0}, Ls4/a;->y()V

    iget-object p0, p0, Lcom/bumptech/glide/b;->p:LSa/p;

    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, v0}, LSa/p;->d(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object p0, Lsh/h;->a:Lsh/c;

    invoke-virtual {p0}, Lsh/c;->b()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Application;->onTrimMemory(I)V

    const-string p0, "CalendarApplication"

    const-string v0, "onTrimMemory level : "

    invoke-static {p1, v0, p0}, LMe/a;->p(ILjava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x28

    if-lt p1, p0, :cond_0

    sget-object p0, Lsh/h;->a:Lsh/c;

    invoke-virtual {p0}, Lsh/c;->b()V

    return-void

    :cond_0
    const/16 p0, 0x14

    if-ne p1, p0, :cond_1

    sget-object p0, Lsh/h;->a:Lsh/c;

    iget-object p0, p0, Lsh/c;->n:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/u0;

    iget-object p1, p0, LCe/o;->g:Ljava/lang/Object;

    check-cast p1, LEb/c;

    monitor-enter p1

    :try_start_0
    iget v0, p0, LCe/o;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, LCe/o;->n(I)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1

    throw p0

    :cond_1
    return-void
.end method
