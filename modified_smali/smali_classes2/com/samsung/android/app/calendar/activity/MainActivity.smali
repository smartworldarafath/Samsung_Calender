.class public Lcom/samsung/android/app/calendar/activity/MainActivity;
.super LP6/c;
.source "SourceFile"

# interfaces
.implements LIb/j;
.implements LC9/a;
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# static fields
.field public static final synthetic x0:I


# instance fields
.field public final M:LP6/Q;

.field public final N:Ljava/util/ArrayList;

.field public O:Lnj/a;

.field public P:LP6/i;

.field public Q:LP6/H0;

.field public R:LP6/J0;

.field public final S:LYj/a;

.field public T:Lek/i;

.field public U:LYj/b;

.field public V:LA2/b;

.field public W:Landroidx/recyclerview/widget/RecyclerView;

.field public X:Landroid/os/Bundle;

.field public Y:Z

.field public Z:Z

.field public a0:Z

.field public b0:LLa/f;

.field public c0:Lh9/f;

.field public d0:Z

.field public e0:LP6/v0;

.field public f0:Lcom/samsung/android/app/calendar/commonlocationpicker/N;

.field public g0:Z

.field public h0:Z

.field public i0:Z

.field public j0:Z

.field public k0:LS6/c;

.field public l0:Z

.field public m0:Z

.field public n0:Z

.field public o0:Landroidx/appcompat/app/l;

.field public final p0:Landroid/os/Handler;

.field public q0:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

.field public r0:LP6/z0;

.field public s0:Lg9/b;

.field public t0:Z

.field public u0:LP6/w0;

.field public final v0:LFb/b;

.field public w0:LP6/n0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "APP_Activity newInstance"

    invoke-static {v0}, LRf/j;->a(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/appcompat/app/o;-><init>()V

    new-instance v0, LP6/Q;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->N:Ljava/util/ArrayList;

    new-instance v0, LYj/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->S:LYj/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Y:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Z:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->a0:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->d0:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->e0:LP6/v0;

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->g0:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->h0:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->i0:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->j0:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->l0:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->m0:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->n0:Z

    iput-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->o0:Landroidx/appcompat/app/l;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->p0:Landroid/os/Handler;

    new-instance v0, LP6/w0;

    invoke-direct {v0, p0}, LP6/w0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->u0:LP6/w0;

    new-instance v0, LFb/b;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, LFb/b;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->v0:LFb/b;

    invoke-static {}, LRf/j;->f()V

    return-void
.end method

.method public static H(Lcom/samsung/android/app/calendar/activity/MainActivity;Landroid/graphics/Insets;)V
    .locals 18

    move-object/from16 v0, p1

    invoke-static {}, LYd/c;->p()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    iget v3, v0, Landroid/graphics/Insets;->left:I

    :goto_0
    if-eqz v1, :cond_1

    iget v4, v0, Landroid/graphics/Insets;->right:I

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    iget v5, v0, Landroid/graphics/Insets;->top:I

    iget v6, v0, Landroid/graphics/Insets;->bottom:I

    const v7, 0x7f0a056e

    move-object/from16 v8, p0

    invoke-virtual {v8, v7}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    instance-of v9, v7, Lcom/samsung/android/app/calendar/view/calendardrawer/DrawerViewContainer;

    if-eqz v9, :cond_6

    check-cast v7, Lcom/samsung/android/app/calendar/view/calendardrawer/DrawerViewContainer;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070f1e

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0703d2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0703d1

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    if-eqz v1, :cond_2

    add-int/2addr v4, v9

    goto :goto_2

    :cond_2
    add-int v4, v3, v9

    :goto_2
    new-instance v12, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v9, 0x7f0811dc

    const/4 v13, 0x0

    invoke-virtual {v3, v9, v13}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    if-eqz v1, :cond_3

    move v14, v2

    goto :goto_3

    :cond_3
    move v14, v4

    :goto_3
    if-eqz v1, :cond_4

    move/from16 v16, v4

    goto :goto_4

    :cond_4
    move/from16 v16, v2

    :goto_4
    const/16 v17, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v12 .. v17}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v7, v12}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    add-int/2addr v5, v10

    iput v5, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v6, v11

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-static {v2}, LAb/d;->i(Landroid/view/Display;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    int-to-float v2, v2

    div-float v5, v2, v3

    invoke-static {v5}, LR5/c;->R(F)I

    move-result v5

    const/16 v6, 0x1e0

    if-ge v5, v6, :cond_5

    const v3, 0x3f5c28f6    # 0.86f

    mul-float/2addr v2, v3

    invoke-static {v2}, LR5/c;->R(F)I

    move-result v2

    goto :goto_5

    :cond_5
    const/16 v2, 0x12c

    int-to-float v2, v2

    mul-float/2addr v3, v2

    invoke-static {v3}, LR5/c;->R(F)I

    move-result v2

    :goto_5
    add-int/2addr v2, v4

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    invoke-virtual/range {p0 .. p1}, Lcom/samsung/android/app/calendar/activity/MainActivity;->X(Landroid/graphics/Insets;)V

    return-void
.end method


# virtual methods
.method public final B()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    iget-object v0, p0, LP6/Q;->a:LIb/k;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, LIb/k;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    const-string p0, "001"

    return-object p0

    :cond_1
    iget-object p0, p0, LP6/Q;->a:LIb/k;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, LIb/k;->b:LIb/l;

    if-nez p0, :cond_3

    :goto_1
    const/4 p0, 0x0

    return-object p0

    :cond_3
    invoke-interface {p0}, LIb/l;->K()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final I(Z)V
    .locals 3

    invoke-static {p0}, LRf/j;->h0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.osp.app.signin.action.ADD_SAMSUNG_ACCOUNT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "OSP_VER"

    const-string v2, "OSP_02"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "MODE"

    const-string v2, "ADD_ACCOUNT"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "mypackage"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "client_id"

    const-string v2, "tivhn39mr9"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_1

    const/16 p1, 0x2bf

    invoke-virtual {p0, v0, p1}, Ld/j;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final J()V
    .locals 3

    invoke-static {p0}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->t0:Z

    new-instance v0, LP6/r0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, LP6/r0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    const-wide/16 v1, 0x1f4

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->p0:Landroid/os/Handler;

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final K()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->U:LYj/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LYj/b;->d()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->U:LYj/b;

    invoke-interface {v0}, LYj/b;->dispose()V

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lpk/e;->b:LVj/m;

    const-wide/16 v1, 0x28a

    invoke-static {v1, v2, v0}, LVj/d;->v(JLVj/m;)Lik/W;

    move-result-object v0

    invoke-static {}, LXj/b;->a()LXj/d;

    move-result-object v1

    invoke-virtual {v0, v1}, LVj/d;->n(LVj/m;)Lik/D;

    move-result-object v0

    new-instance v1, LP6/p0;

    const/16 v2, 0xa

    invoke-direct {v1, p0, v2}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    invoke-virtual {v0, v1}, LVj/d;->r(Lak/c;)LYj/b;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->U:LYj/b;

    return-void
.end method

.method public final L(Z)V
    .locals 3

    const v0, 0x7f0a056e

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0196

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v1, 0x7f0a03c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->W:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->V:LA2/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, v0, LA2/b;->o:Ljava/lang/Object;

    check-cast v2, Lnj/a;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v2

    iget-object v0, v0, LA2/b;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v2, :cond_2

    :goto_0
    iput-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->V:LA2/b;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q(Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->V:LA2/b;

    iget-object v1, v0, LA2/b;->o:Ljava/lang/Object;

    check-cast v1, Lnj/a;

    iput-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->O:Lnj/a;

    iget-object v0, v0, LA2/b;->n:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q(Landroid/os/Parcelable;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q(Landroid/os/Parcelable;)V

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    iget-object p0, p0, LP6/Q;->a:LIb/k;

    if-eqz p0, :cond_4

    invoke-virtual {p0, p1}, LIb/k;->H(Z)V

    :cond_4
    return-void
.end method

.method public final M()V
    .locals 3

    sget v0, Lh9/l;->p:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-static {p0}, Lh9/l;->v(Landroid/app/Activity;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    xor-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initDrawerWithInflateOption minimalInflate: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-static {v2, v1}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->L(Z)V

    return-void
.end method

.method public final N(Z)V
    .locals 27

    move-object/from16 v1, p0

    new-instance v0, LP6/i;

    invoke-direct {v0, v1}, LP6/i;-><init>(Landroid/app/Activity;)V

    iput-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "NSRetainedFragment"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, LP6/J0;

    iput-object v3, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->R:LP6/J0;

    const/4 v8, 0x0

    if-nez v3, :cond_0

    new-instance v3, LP6/J0;

    invoke-direct {v3}, Landroid/app/Fragment;-><init>()V

    iput-object v3, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->R:LP6/J0;

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v3, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->R:LP6/J0;

    invoke-virtual {v0, v3, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-object v0, v8

    goto :goto_0

    :cond_0
    iget-object v0, v3, LP6/J0;->m:LA2/b;

    :goto_0
    iput-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->V:LA2/b;

    iget-object v9, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    const-string v2, "MainActivity"

    if-nez v0, :cond_1

    new-instance v0, LIb/k;

    invoke-direct {v0}, LIb/k;-><init>()V

    iput-object v0, v9, LP6/Q;->a:LIb/k;

    new-instance v3, LP6/H0;

    iget-object v4, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    iget-object v5, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->S:LYj/a;

    invoke-direct {v3, v1, v4, v0, v5}, LP6/H0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;LP6/i;LIb/k;LYj/a;)V

    iput-object v3, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    goto :goto_1

    :cond_1
    iget-object v0, v0, LA2/b;->m:Ljava/lang/Object;

    check-cast v0, LIb/k;

    iput-object v0, v9, LP6/Q;->a:LIb/k;

    invoke-virtual {v9}, LP6/Q;->d()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "No Calendar instance in RemainedMainData"

    invoke-static {v2, v0}, LYd/d;->m(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->V:LA2/b;

    iget-object v0, v0, LA2/b;->p:Ljava/lang/Object;

    check-cast v0, LP6/H0;

    iput-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    :goto_1
    iget-object v0, v9, LP6/Q;->a:LIb/k;

    if-nez v0, :cond_3

    move-object v0, v8

    goto :goto_2

    :cond_3
    new-instance v3, LIb/a;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, LIb/a;-><init>(LIb/k;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v0

    :goto_2
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LP6/q0;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v4}, LP6/q0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, v9, LP6/Q;->a:LIb/k;

    if-nez v0, :cond_4

    move-object v0, v8

    goto :goto_3

    :cond_4
    new-instance v3, LIb/a;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, LIb/a;-><init>(LIb/k;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v0

    :goto_3
    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v3, LP6/q0;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v4}, LP6/q0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v10, 0x1

    if-nez v0, :cond_32

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_13

    :cond_5
    iget-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->V:LA2/b;

    const/4 v11, 0x0

    if-eqz v0, :cond_7

    iget-boolean v3, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->Z:Z

    iget-object v0, v0, LA2/b;->q:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, v3, :cond_7

    :goto_4
    const-string v0, "Reset drawer status because drawer style is changed between navi-rail and standard drawer"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v8, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->V:LA2/b;

    iget-object v0, v9, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_7

    iget-object v0, v0, LIb/k;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_7
    invoke-virtual {v9}, LP6/Q;->d()Z

    move-result v0

    sget-object v12, Lhf/a;->s:Lhf/a;

    if-eqz v0, :cond_8

    iget-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    if-nez v0, :cond_9

    :cond_8
    move/from16 v26, v10

    move v10, v11

    goto/16 :goto_e

    :cond_9
    iget-object v7, v9, LP6/Q;->a:LIb/k;

    new-instance v13, LI3/w;

    iget-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    iget-object v2, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->V:LA2/b;

    if-eqz v2, :cond_a

    move v6, v10

    goto :goto_5

    :cond_a
    move v6, v11

    :goto_5
    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-direct {v13, v2, v3}, LI3/w;-><init>(IZ)V

    iput-object v7, v13, LI3/w;->n:Ljava/lang/Object;

    iput-object v1, v13, LI3/w;->o:Ljava/lang/Object;

    iput-object v0, v13, LI3/w;->p:Ljava/lang/Object;

    const v14, 0x7f0a07c7

    if-nez v7, :cond_b

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto/16 :goto_6

    :cond_b
    new-instance v0, Ltc/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ls9/h;

    invoke-direct {v2, v1}, Ls9/h;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;)V

    iput-object v2, v0, Ltc/a;->a:Ls9/h;

    new-instance v3, LAb/a;

    const/4 v4, 0x3

    invoke-direct {v3, v13, v4}, LAb/a;-><init>(Ljava/lang/Object;I)V

    new-instance v4, Ls9/f;

    const/16 v5, 0xb

    invoke-direct {v4, v2, v5}, Ls9/f;-><init>(Ls9/h;I)V

    invoke-static {v4}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v2

    new-instance v4, Lsg/p;

    const/4 v5, 0x2

    invoke-direct {v4, v3, v5}, Lsg/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v4}, Llf/g;->e(Llf/f;)V

    iput-object v0, v7, LIb/k;->e:Ltc/a;

    new-instance v2, LIb/e;

    const/4 v3, 0x6

    invoke-direct {v2, v7, v3}, LIb/e;-><init>(LIb/k;I)V

    iget-object v0, v0, Ltc/a;->a:Ls9/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ls9/f;

    const/4 v4, 0x4

    invoke-direct {v3, v0, v4}, Ls9/f;-><init>(Ls9/h;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v0

    new-instance v3, Lsg/p;

    const/4 v4, 0x6

    invoke-direct {v3, v2, v4}, Lsg/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Llf/g;->e(Llf/f;)V

    iget-object v0, v7, LIb/k;->e:Ltc/a;

    new-instance v2, LIb/e;

    const/4 v3, 0x7

    invoke-direct {v2, v7, v3}, LIb/e;-><init>(LIb/k;I)V

    iget-object v0, v0, Ltc/a;->a:Ls9/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ls9/f;

    const/16 v4, 0x8

    invoke-direct {v3, v0, v4}, Ls9/f;-><init>(Ls9/h;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v0

    new-instance v3, Lsg/p;

    const/4 v4, 0x7

    invoke-direct {v3, v2, v4}, Lsg/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Llf/g;->e(Llf/f;)V

    iget-object v0, v7, LIb/k;->e:Ltc/a;

    new-instance v2, LIb/e;

    const/16 v3, 0x8

    invoke-direct {v2, v7, v3}, LIb/e;-><init>(LIb/k;I)V

    iget-object v0, v0, Ltc/a;->a:Ls9/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ls9/f;

    const/16 v4, 0x9

    invoke-direct {v3, v0, v4}, Ls9/f;-><init>(Ls9/h;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v0

    new-instance v3, Lsg/p;

    invoke-direct {v3, v2, v4}, Lsg/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Llf/g;->e(Llf/f;)V

    iget-object v0, v7, LIb/k;->e:Ltc/a;

    new-instance v2, LIb/f;

    const/16 v3, 0x13

    invoke-direct {v2, v7, v3}, LIb/f;-><init>(LIb/k;I)V

    iget-object v0, v0, Ltc/a;->a:Ls9/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ls9/f;

    const/4 v4, 0x5

    invoke-direct {v3, v0, v4}, Ls9/f;-><init>(Ls9/h;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v0

    new-instance v3, Lsg/p;

    invoke-direct {v3, v2, v4}, Lsg/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Llf/g;->b(Llf/d;)Llf/a;

    iget-object v0, v7, LIb/k;->e:Ltc/a;

    new-instance v2, LIb/e;

    const/16 v3, 0x9

    invoke-direct {v2, v7, v3}, LIb/e;-><init>(LIb/k;I)V

    iget-object v0, v0, Ltc/a;->a:Ls9/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ls9/f;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ls9/f;-><init>(Ls9/h;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v0

    new-instance v3, Lsg/p;

    const/16 v4, 0xa

    invoke-direct {v3, v2, v4}, Lsg/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Llf/g;->e(Llf/f;)V

    iget-object v0, v7, LIb/k;->e:Ltc/a;

    new-instance v2, LIb/e;

    const/16 v3, 0xa

    invoke-direct {v2, v7, v3}, LIb/e;-><init>(LIb/k;I)V

    iget-object v0, v0, Ltc/a;->a:Ls9/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ls9/f;

    const/4 v4, 0x7

    invoke-direct {v3, v0, v4}, Ls9/f;-><init>(Ls9/h;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v0

    new-instance v3, Lsg/p;

    const/16 v4, 0x8

    invoke-direct {v3, v2, v4}, Lsg/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Llf/g;->e(Llf/f;)V

    iget-object v0, v7, LIb/k;->e:Ltc/a;

    new-instance v2, LIb/f;

    const/16 v3, 0x14

    invoke-direct {v2, v7, v3}, LIb/f;-><init>(LIb/k;I)V

    iget-object v0, v0, Ltc/a;->a:Ls9/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ls9/f;

    const/4 v4, 0x3

    invoke-direct {v3, v0, v4}, Ls9/f;-><init>(Ls9/h;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v0

    new-instance v3, Lsg/p;

    const/4 v4, 0x4

    invoke-direct {v3, v2, v4}, Lsg/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Llf/g;->b(Llf/d;)Llf/a;

    iget-object v0, v7, LIb/k;->e:Ltc/a;

    new-instance v2, LIb/f;

    const/16 v3, 0x15

    invoke-direct {v2, v7, v3}, LIb/f;-><init>(LIb/k;I)V

    iget-object v0, v0, Ltc/a;->a:Ls9/h;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Ls9/f;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Ls9/f;-><init>(Ls9/h;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v0

    new-instance v3, Lsg/p;

    const/4 v4, 0x3

    invoke-direct {v3, v2, v4}, Lsg/p;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Llf/g;->b(Llf/d;)Llf/a;

    iget-object v0, v7, LIb/k;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x4

    invoke-virtual {v7, v0}, LIb/k;->v(I)V

    :cond_c
    new-instance v0, Lp1/P;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lp1/P;-><init>(I)V

    new-instance v2, Lp9/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Lp9/a;->a:Lcom/samsung/android/app/calendar/activity/MainActivity;

    iput-object v2, v0, Lp1/P;->n:Ljava/lang/Object;

    iput-object v0, v7, LIb/k;->g:Lp1/P;

    new-instance v0, LIb/f;

    const/4 v3, 0x4

    invoke-direct {v0, v7, v3}, LIb/f;-><init>(LIb/k;I)V

    new-instance v3, Lm9/j0;

    const/16 v4, 0xf

    invoke-direct {v3, v2, v4}, Lm9/j0;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v2

    new-instance v3, Lm9/j0;

    const/16 v4, 0x1b

    invoke-direct {v3, v0, v4}, Lm9/j0;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Llf/g;->b(Llf/d;)Llf/a;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_d

    sget-object v0, Lh9/l;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lh9/l;->s0(Ljava/lang/Boolean;)V

    sput-object v8, Lh9/l;->d:Ljava/lang/Boolean;

    :cond_d
    new-instance v15, LGc/a;

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    new-instance v0, LZ9/j;

    const v2, 0x7f0a07cf

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/oneui/floatingactioncontainer/FloatingBottomLayout;

    const v3, 0x7f0a07c8

    invoke-virtual {v1, v3}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v14}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a07c9

    invoke-virtual {v1, v5}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct/range {v0 .. v7}, LZ9/j;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;Lcom/google/android/material/oneui/floatingactioncontainer/FloatingBottomLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZLIb/k;)V

    iput-object v0, v15, LGc/a;->a:LZ9/j;

    new-instance v2, LP6/f0;

    const/4 v3, 0x1

    invoke-direct {v2, v13, v3}, LP6/f0;-><init>(Ljava/lang/Object;I)V

    new-instance v3, LX6/e;

    const/16 v4, 0xe

    invoke-direct {v3, v0, v4}, LX6/e;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v0

    new-instance v3, LCf/a;

    const/16 v4, 0x16

    invoke-direct {v3, v2, v4}, LCf/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v3}, Llf/g;->b(Llf/d;)Llf/a;

    iput-object v15, v7, LIb/k;->i:LGc/a;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_6
    iget-object v2, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->N:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LB9/a3;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, LB9/a3;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v15, LP6/O;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {v15}, Ljava/lang/Object;-><init>()V

    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v15, LP6/O;->l:Ljava/lang/Object;

    iput-object v1, v15, LP6/O;->d:Ljava/lang/Object;

    iput-object v0, v15, LP6/O;->e:Ljava/lang/Object;

    iget-object v0, v15, LP6/O;->d:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/calendar/activity/MainActivity;

    iget-object v3, v9, LP6/Q;->a:LIb/k;

    iput-object v3, v15, LP6/O;->c:Ljava/lang/Object;

    iget-object v3, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    iput-object v3, v15, LP6/O;->f:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    iget-object v4, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->X:Landroid/os/Bundle;

    invoke-static {v1, v3, v4}, LP6/k0;->c(Lcom/samsung/android/app/calendar/activity/MainActivity;Landroid/content/Intent;Landroid/os/Bundle;)Lhf/a;

    move-result-object v4

    const-string v5, "calendar_view_type"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-virtual {v3, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    const-string v5, "extra_need_month_popup"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    if-eqz v3, :cond_10

    const/16 v5, 0x8

    if-eq v3, v5, :cond_10

    move-object v3, v4

    goto :goto_7

    :cond_10
    move-object v3, v12

    :goto_7
    iput-object v3, v15, LP6/O;->a:Ljava/lang/Object;

    if-eq v4, v3, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "Input calendar type is not valid for main type, input type : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, LYd/d;->l(Ljava/lang/String;)V

    :cond_11
    iget-object v3, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, LMd/a;

    const/16 v5, 0x1b

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, LMd/a;-><init>(IZ)V

    new-instance v5, Lu/b;

    invoke-direct {v5, v3}, Lu/b;-><init>(Ljava/lang/Object;)V

    iput-object v5, v4, LMd/a;->n:Ljava/lang/Object;

    iput-object v4, v15, LP6/O;->i:Ljava/lang/Object;

    iget-object v3, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    iget-object v4, v3, LP6/H0;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lsg/h;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lmi/a;

    const/4 v13, 0x6

    invoke-direct {v6, v13, v3, v4}, Lmi/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v6, v5, Lsg/h;->m:Ljava/lang/Object;

    iput-object v5, v15, LP6/O;->j:Ljava/lang/Object;

    new-instance v3, LP6/p0;

    const/16 v4, 0x13

    invoke-direct {v3, v1, v4}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    iput-object v3, v15, LP6/O;->k:Ljava/lang/Object;

    iget-boolean v3, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->l0:Z

    xor-int/2addr v3, v10

    iput-boolean v3, v15, LP6/O;->b:Z

    iget-object v3, v15, LP6/O;->a:Ljava/lang/Object;

    check-cast v3, Lhf/a;

    invoke-virtual {v12, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "DrawingModelImpl"

    const-string v5, "DrawingViewModelImpl"

    const-string v6, "CalendarInjector"

    if-eqz v3, :cond_18

    iget-object v3, v15, LP6/O;->c:Ljava/lang/Object;

    check-cast v3, LIb/k;

    if-nez v3, :cond_12

    const-string v0, "Can\'t inject month first"

    invoke-static {v6, v0}, LYd/d;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    move/from16 v26, v10

    goto/16 :goto_b

    :cond_12
    invoke-static {v0}, LEj/d;->S(Landroid/content/Context;)Le9/a;

    move-result-object v3

    invoke-static {v0}, LR7/j;->f(Landroid/content/Context;)LR7/i;

    move-result-object v6

    invoke-static {v0}, LC7/p;->f(Landroid/content/Context;)LC7/e;

    move-result-object v24

    invoke-static {v0}, LC7/p;->f(Landroid/content/Context;)LC7/e;

    move-result-object v13

    move/from16 v26, v10

    new-instance v10, LWc/c;

    invoke-direct {v10, v0}, LWc/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lm2/s;->u(Landroid/content/Context;)LP7/b;

    move-result-object v19

    new-instance v8, Lcom/samsung/android/app/calendar/commonlocationpicker/N;

    invoke-direct {v8, v0}, Lcom/samsung/android/app/calendar/commonlocationpicker/N;-><init>(Landroid/content/Context;)V

    new-instance v11, LP7/b;

    const/4 v14, 0x0

    invoke-direct {v11, v14}, LP7/b;-><init>(I)V

    new-instance v14, LYj/a;

    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    iput-object v14, v11, LP7/b;->n:LYj/a;

    invoke-static {v5, v4}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v11, LP7/b;->o:Landroid/content/Context;

    new-instance v4, Lm8/i;

    invoke-direct {v4, v0}, Lm8/i;-><init>(Landroid/content/Context;)V

    new-instance v5, LA2/b;

    const/4 v14, 0x3

    invoke-direct {v5, v0, v14}, LA2/b;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, LE5/e;->W(Landroid/content/Context;)LE2/b;

    move-result-object v0

    invoke-static {}, Llg/d;->U()Z

    move-result v14

    iput-boolean v14, v0, LE2/b;->n:Z

    new-instance v14, LEb/c;

    move-object/from16 v18, v0

    const/16 v0, 0x17

    invoke-direct {v14, v0}, LEb/c;-><init>(I)V

    iget-object v0, v15, LP6/O;->c:Ljava/lang/Object;

    check-cast v0, LIb/k;

    iput-object v3, v0, LIb/k;->o:Le9/a;

    move-object/from16 v22, v3

    iget-object v3, v0, LIb/k;->p:LFh/a;

    if-nez v3, :cond_13

    invoke-virtual/range {v22 .. v22}, Le9/a;->e()LFh/a;

    move-result-object v3

    iput-object v3, v0, LIb/k;->p:LFh/a;

    :cond_13
    move-object/from16 v17, v4

    move-object/from16 v16, v5

    move-object/from16 v20, v8

    move-object/from16 v21, v11

    invoke-virtual/range {v15 .. v22}, LP6/O;->q(LA2/b;Lm8/i;LE2/b;LP7/b;Lcom/samsung/android/app/calendar/commonlocationpicker/N;LP7/b;Le9/a;)V

    move-object/from16 v4, v17

    move-object/from16 v3, v19

    move-object/from16 v0, v22

    sget-boolean v5, Lm9/T;->a:Z

    if-eqz v5, :cond_16

    invoke-virtual {v15}, LP6/O;->t()V

    iget-object v5, v15, LP6/O;->h:Ljava/lang/Object;

    check-cast v5, LPc/h;

    invoke-virtual {v15, v0, v4}, LP6/O;->p(Le9/a;Lm8/i;)LLc/c;

    move-result-object v8

    iput-object v8, v5, LPc/h;->d:LLc/c;

    iget-object v11, v5, LPc/h;->f:LIb/f;

    iput-object v11, v8, LLc/c;->k:Ljava/lang/Object;

    iget-object v11, v5, LPc/h;->g:LIb/f;

    iput-object v11, v8, LLc/c;->l:Ljava/lang/Object;

    iget-object v11, v8, LLc/c;->f:Ljava/lang/Object;

    check-cast v11, LPc/f;

    if-eqz v11, :cond_14

    invoke-interface {v11}, LPc/f;->getDeleteButtonObservable()Llf/g;

    move-result-object v11

    if-eqz v11, :cond_14

    move-object/from16 v22, v0

    new-instance v0, LP6/B;

    move-object/from16 v17, v4

    const/4 v4, 0x1

    invoke-direct {v0, v8, v4}, LP6/B;-><init>(LLc/c;I)V

    invoke-virtual {v11, v0}, Llf/g;->b(Llf/d;)Llf/a;

    goto :goto_8

    :cond_14
    move-object/from16 v22, v0

    move-object/from16 v17, v4

    :goto_8
    iget-object v0, v5, LPc/h;->h:LIb/f;

    iput-object v0, v8, LLc/c;->m:Ljava/lang/Object;

    iget-object v0, v8, LLc/c;->f:Ljava/lang/Object;

    check-cast v0, LPc/f;

    if-eqz v0, :cond_15

    invoke-interface {v0}, LPc/f;->getShareButtonObservable()Llf/g;

    move-result-object v0

    if-eqz v0, :cond_15

    new-instance v4, LP6/B;

    const/16 v11, 0xd

    invoke-direct {v4, v8, v11}, LP6/B;-><init>(LLc/c;I)V

    invoke-virtual {v0, v4}, Llf/g;->b(Llf/d;)Llf/a;

    :cond_15
    iget-object v0, v5, LPc/h;->i:LIb/f;

    iput-object v0, v8, LLc/c;->n:Ljava/lang/Object;

    iget-object v0, v8, LLc/c;->f:Ljava/lang/Object;

    check-cast v0, LPc/f;

    if-eqz v0, :cond_17

    invoke-interface {v0}, LPc/f;->getPagerScrolledObservable()Llf/g;

    move-result-object v0

    if-eqz v0, :cond_17

    new-instance v4, LP6/B;

    const/16 v5, 0xb

    invoke-direct {v4, v8, v5}, LP6/B;-><init>(LLc/c;I)V

    invoke-virtual {v0, v4}, Llf/g;->b(Llf/d;)Llf/a;

    goto :goto_9

    :cond_16
    move-object/from16 v22, v0

    move-object/from16 v17, v4

    :cond_17
    :goto_9
    iget-object v0, v15, LP6/O;->c:Ljava/lang/Object;

    check-cast v0, LIb/k;

    iget-object v4, v15, LP6/O;->a:Ljava/lang/Object;

    check-cast v4, Lhf/a;

    invoke-virtual {v0, v4}, LIb/k;->u(Lhf/a;)V

    invoke-virtual {v15, v13, v3}, LP6/O;->s(LC7/e;LP7/b;)V

    move-object/from16 v18, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v15

    new-instance v15, LP6/D;

    move-object/from16 v19, v3

    move-object/from16 v23, v10

    move-object/from16 v25, v14

    move-object/from16 v21, v22

    move-object/from16 v22, v6

    invoke-direct/range {v15 .. v25}, LP6/D;-><init>(LP6/O;LA2/b;Lm8/i;LP7/b;Lcom/samsung/android/app/calendar/commonlocationpicker/N;Le9/a;LR7/i;LWc/c;LC7/e;LEb/c;)V

    move-object v0, v15

    move-object/from16 v15, v16

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    goto/16 :goto_b

    :cond_18
    move/from16 v26, v10

    iget-object v3, v15, LP6/O;->c:Ljava/lang/Object;

    check-cast v3, LIb/k;

    if-nez v3, :cond_19

    const-string v0, "Can\'t inject"

    invoke-static {v6, v0}, LYd/d;->m(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    goto/16 :goto_b

    :cond_19
    invoke-static {v0}, LEj/d;->S(Landroid/content/Context;)Le9/a;

    move-result-object v3

    invoke-static {v0}, LR7/j;->f(Landroid/content/Context;)LR7/i;

    move-result-object v6

    invoke-static {v0}, LC7/p;->f(Landroid/content/Context;)LC7/e;

    move-result-object v8

    invoke-static {v0}, LC7/p;->f(Landroid/content/Context;)LC7/e;

    move-result-object v10

    new-instance v11, LWc/c;

    invoke-direct {v11, v0}, LWc/c;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lm2/s;->u(Landroid/content/Context;)LP7/b;

    move-result-object v18

    new-instance v13, Lcom/samsung/android/app/calendar/commonlocationpicker/N;

    invoke-direct {v13, v0}, Lcom/samsung/android/app/calendar/commonlocationpicker/N;-><init>(Landroid/content/Context;)V

    new-instance v14, LP7/b;

    move-object/from16 v23, v6

    const/4 v6, 0x0

    invoke-direct {v14, v6}, LP7/b;-><init>(I)V

    new-instance v6, LYj/a;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput-object v6, v14, LP7/b;->n:LYj/a;

    invoke-static {v5, v4}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v14, LP7/b;->o:Landroid/content/Context;

    new-instance v4, Lm8/i;

    invoke-direct {v4, v0}, Lm8/i;-><init>(Landroid/content/Context;)V

    new-instance v5, Lo8/d;

    invoke-direct {v5, v0}, Lo8/d;-><init>(Landroid/content/Context;)V

    new-instance v6, LA2/b;

    move-object/from16 v17, v4

    const/4 v4, 0x3

    invoke-direct {v6, v0, v4}, LA2/b;-><init>(Landroid/content/Context;I)V

    invoke-static {v0}, LE5/e;->W(Landroid/content/Context;)LE2/b;

    move-result-object v4

    move-object/from16 v24, v0

    invoke-static {}, Llg/d;->U()Z

    move-result v0

    iput-boolean v0, v4, LE2/b;->n:Z

    new-instance v0, LEb/c;

    move-object/from16 v16, v4

    const/16 v4, 0x17

    invoke-direct {v0, v4}, LEb/c;-><init>(I)V

    iget-object v4, v15, LP6/O;->c:Ljava/lang/Object;

    check-cast v4, LIb/k;

    iput-object v3, v4, LIb/k;->o:Le9/a;

    move-object/from16 v25, v0

    iget-object v0, v4, LIb/k;->p:LFh/a;

    if-nez v0, :cond_1a

    invoke-virtual {v3}, Le9/a;->e()LFh/a;

    move-result-object v0

    iput-object v0, v4, LIb/k;->p:LFh/a;

    :cond_1a
    move-object/from16 v22, v3

    move-object/from16 v20, v13

    move-object/from16 v21, v14

    move-object/from16 v19, v18

    move-object/from16 v18, v16

    move-object/from16 v16, v6

    invoke-virtual/range {v15 .. v22}, LP6/O;->q(LA2/b;Lm8/i;LE2/b;LP7/b;Lcom/samsung/android/app/calendar/commonlocationpicker/N;LP7/b;Le9/a;)V

    move-object/from16 v18, v19

    move-object/from16 v19, v20

    move-object/from16 v20, v22

    sget-boolean v0, Lm9/T;->a:Z

    if-eqz v0, :cond_1b

    invoke-virtual/range {v15 .. v20}, LP6/O;->v(LA2/b;Lm8/i;LP7/b;Lcom/samsung/android/app/calendar/commonlocationpicker/N;Le9/a;)V

    move-object v3, v11

    move-object/from16 v14, v16

    move-object/from16 v13, v17

    move-object/from16 v6, v18

    move-object/from16 v11, v19

    move-object/from16 v4, v20

    move-object/from16 v0, v23

    goto :goto_a

    :cond_1b
    invoke-static/range {v24 .. v24}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Ltf/a;->A()Z

    move-result v0

    if-nez v0, :cond_1c

    move-object/from16 v21, v11

    move-object/from16 v22, v20

    move-object/from16 v20, v23

    invoke-virtual/range {v15 .. v22}, LP6/O;->w(LA2/b;Lm8/i;LP7/b;Lcom/samsung/android/app/calendar/commonlocationpicker/N;LR7/i;LWc/c;Le9/a;)V

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    move-object/from16 v14, v16

    move-object/from16 v13, v17

    move-object/from16 v6, v18

    move-object/from16 v11, v19

    move-object/from16 v4, v22

    goto :goto_a

    :cond_1c
    move-object v3, v11

    move-object/from16 v0, v23

    invoke-virtual/range {v15 .. v20}, LP6/O;->v(LA2/b;Lm8/i;LP7/b;Lcom/samsung/android/app/calendar/commonlocationpicker/N;Le9/a;)V

    move-object/from16 v14, v16

    move-object/from16 v13, v17

    move-object/from16 v6, v18

    move-object/from16 v11, v19

    move-object/from16 v4, v20

    :goto_a
    invoke-virtual {v15, v14, v11, v4}, LP6/O;->z(LA2/b;Lcom/samsung/android/app/calendar/commonlocationpicker/N;Le9/a;)V

    invoke-virtual {v15, v8, v6}, LP6/O;->o(LC7/e;LP7/b;)V

    invoke-virtual {v15, v10, v6}, LP6/O;->s(LC7/e;LP7/b;)V

    invoke-virtual {v15, v3}, LP6/O;->u(LWc/c;)V

    invoke-virtual {v15, v5}, LP6/O;->y(Lo8/d;)V

    move-object/from16 v20, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v11

    move-object/from16 v16, v14

    move-object/from16 v17, v25

    invoke-virtual/range {v15 .. v20}, LP6/O;->r(LA2/b;LEb/c;LP7/b;Lcom/samsung/android/app/calendar/commonlocationpicker/N;Le9/a;)V

    sget-boolean v5, Lm9/T;->a:Z

    if-eqz v5, :cond_1f

    invoke-virtual {v15}, LP6/O;->t()V

    iget-object v5, v15, LP6/O;->h:Ljava/lang/Object;

    check-cast v5, LPc/h;

    sget-object v6, Lhf/a;->z:Lhf/a;

    invoke-virtual {v15, v0, v3, v6}, LP6/O;->b(LR7/a;LWc/c;Lhf/a;)Lxc/u;

    move-result-object v0

    invoke-static/range {v24 .. v24}, Lcom/google/android/gms/internal/auth/l;->R(Landroid/content/Context;)LS7/s;

    move-result-object v6

    iput-object v6, v0, Lxc/u;->h:LS7/s;

    iget-object v6, v15, LP6/O;->c:Ljava/lang/Object;

    check-cast v6, LIb/k;

    iput-object v0, v6, LIb/k;->m:Lxc/u;

    new-instance v8, LIb/f;

    const/16 v10, 0xe

    invoke-direct {v8, v6, v10}, LIb/f;-><init>(LIb/k;I)V

    iput-object v8, v0, Lxc/u;->u:LGb/d;

    new-instance v8, LIb/f;

    const/16 v10, 0xf

    invoke-direct {v8, v6, v10}, LIb/f;-><init>(LIb/k;I)V

    iput-object v8, v0, Lxc/u;->t:LGb/d;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v5, LPc/h;->b:Lxc/u;

    iget-object v0, v15, LP6/O;->h:Ljava/lang/Object;

    check-cast v0, LPc/h;

    invoke-static/range {v24 .. v24}, LR7/j;->g(Landroid/content/Context;)LR7/i;

    move-result-object v5

    invoke-virtual {v15, v5, v3}, LP6/O;->x(LR7/i;LWc/c;)Lxc/u;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, LPc/h;->c:Lxc/u;

    iget-object v0, v15, LP6/O;->h:Ljava/lang/Object;

    check-cast v0, LPc/h;

    invoke-virtual {v15, v4, v13}, LP6/O;->p(Le9/a;Lm8/i;)LLc/c;

    move-result-object v3

    iput-object v3, v0, LPc/h;->d:LLc/c;

    iget-object v4, v0, LPc/h;->f:LIb/f;

    iput-object v4, v3, LLc/c;->k:Ljava/lang/Object;

    iget-object v4, v0, LPc/h;->g:LIb/f;

    iput-object v4, v3, LLc/c;->l:Ljava/lang/Object;

    iget-object v4, v3, LLc/c;->f:Ljava/lang/Object;

    check-cast v4, LPc/f;

    if-eqz v4, :cond_1d

    invoke-interface {v4}, LPc/f;->getDeleteButtonObservable()Llf/g;

    move-result-object v4

    if-eqz v4, :cond_1d

    new-instance v5, LP6/B;

    const/4 v6, 0x1

    invoke-direct {v5, v3, v6}, LP6/B;-><init>(LLc/c;I)V

    invoke-virtual {v4, v5}, Llf/g;->b(Llf/d;)Llf/a;

    :cond_1d
    iget-object v4, v0, LPc/h;->h:LIb/f;

    iput-object v4, v3, LLc/c;->m:Ljava/lang/Object;

    iget-object v4, v3, LLc/c;->f:Ljava/lang/Object;

    check-cast v4, LPc/f;

    if-eqz v4, :cond_1e

    invoke-interface {v4}, LPc/f;->getShareButtonObservable()Llf/g;

    move-result-object v4

    if-eqz v4, :cond_1e

    new-instance v5, LP6/B;

    const/16 v6, 0xd

    invoke-direct {v5, v3, v6}, LP6/B;-><init>(LLc/c;I)V

    invoke-virtual {v4, v5}, Llf/g;->b(Llf/d;)Llf/a;

    :cond_1e
    iget-object v0, v0, LPc/h;->i:LIb/f;

    iput-object v0, v3, LLc/c;->n:Ljava/lang/Object;

    iget-object v0, v3, LLc/c;->f:Ljava/lang/Object;

    check-cast v0, LPc/f;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, LPc/f;->getPagerScrolledObservable()Llf/g;

    move-result-object v0

    if-eqz v0, :cond_1f

    new-instance v4, LP6/B;

    const/16 v5, 0xb

    invoke-direct {v4, v3, v5}, LP6/B;-><init>(LLc/c;I)V

    invoke-virtual {v0, v4}, Llf/g;->b(Llf/d;)Llf/a;

    :cond_1f
    iget-object v0, v15, LP6/O;->c:Ljava/lang/Object;

    check-cast v0, LIb/k;

    iget-object v3, v15, LP6/O;->a:Ljava/lang/Object;

    check-cast v3, Lhf/a;

    invoke-virtual {v0, v3}, LIb/k;->u(Lhf/a;)V

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    :goto_b
    new-instance v3, LB9/a3;

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, LB9/a3;-><init>(Ljava/util/List;I)V

    invoke-virtual {v0, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    new-instance v0, LP6/p0;

    const/16 v3, 0x14

    invoke-direct {v0, v1, v3}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    iget-object v3, v9, LP6/Q;->a:LIb/k;

    if-eqz v3, :cond_20

    iput-object v0, v3, LIb/k;->y:LP6/p0;

    :cond_20
    new-instance v0, LI3/j;

    iget-object v3, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5}, LI3/j;-><init>(IZ)V

    iput-object v7, v0, LI3/j;->n:Ljava/lang/Object;

    iput-object v1, v0, LI3/j;->o:Ljava/lang/Object;

    iput-object v3, v0, LI3/j;->p:Ljava/lang/Object;

    iput-object v15, v0, LI3/j;->q:Ljava/lang/Object;

    if-nez v7, :cond_21

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    const/4 v10, 0x0

    goto :goto_c

    :cond_21
    new-instance v3, Lp7/f;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lp7/f;-><init>(IZ)V

    const v4, 0x7f0a07c7

    invoke-virtual {v1, v4}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0a05af

    invoke-virtual {v1, v5}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    new-instance v6, Lle/a;

    invoke-direct {v6, v1}, Lle/a;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0d08c7

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v6, v8, v11, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/libcalendar/platform/winset/CalendarFloatingActionButton;

    new-instance v8, Lo9/b;

    invoke-direct {v8, v1, v5, v4, v6}, Lo9/b;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/samsung/android/libcalendar/platform/winset/CalendarFloatingActionButton;)V

    new-instance v4, LP6/k;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, LP6/k;-><init>(LI3/j;I)V

    iput-object v4, v3, Lp7/f;->o:Ljava/lang/Object;

    new-instance v4, LB7/c;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, LB7/c;-><init>(I)V

    iput-object v4, v3, Lp7/f;->p:Ljava/lang/Object;

    iput-object v8, v3, Lp7/f;->n:Ljava/lang/Object;

    new-instance v4, Lo9/a;

    invoke-direct {v4, v8, v5}, Lo9/a;-><init>(Lo9/b;I)V

    invoke-static {v4}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v4

    new-instance v5, Lqc/a;

    invoke-direct {v5, v3}, Lqc/a;-><init>(Lp7/f;)V

    invoke-virtual {v4, v5}, Llf/g;->b(Llf/d;)Llf/a;

    iget-object v4, v3, Lp7/f;->n:Ljava/lang/Object;

    check-cast v4, Lo9/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lo9/a;

    const/4 v6, 0x1

    invoke-direct {v5, v4, v6}, Lo9/a;-><init>(Lo9/b;I)V

    invoke-static {v5}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v4

    new-instance v5, Lqc/a;

    invoke-direct {v5, v3}, Lqc/a;-><init>(Lp7/f;)V

    invoke-virtual {v4, v5}, Llf/g;->e(Llf/f;)V

    iput-object v3, v7, LIb/k;->f:Lp7/f;

    iget-object v3, v7, LIb/k;->b:LIb/l;

    invoke-virtual {v7, v3}, LIb/k;->F(LIb/l;)V

    iput-object v8, v7, LIb/k;->u:Lo9/b;

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v3

    :goto_c
    new-instance v4, LB9/a3;

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, LB9/a3;-><init>(Ljava/util/List;I)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v2, v9, LP6/Q;->a:LIb/k;

    if-nez v2, :cond_22

    const/4 v11, 0x0

    goto :goto_d

    :cond_22
    new-instance v3, LIb/a;

    const/4 v4, 0x2

    invoke-direct {v3, v2, v4}, LIb/a;-><init>(LIb/k;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v11

    :goto_d
    new-instance v2, LP6/k;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v3}, LP6/k;-><init>(LI3/j;I)V

    invoke-virtual {v11, v2}, Llf/g;->b(Llf/d;)Llf/a;

    iget-object v2, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LP6/a;

    const/4 v4, 0x6

    invoke-direct {v3, v2, v4}, LP6/a;-><init>(Ljava/lang/Object;I)V

    invoke-static {v3}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v2

    new-instance v3, LP6/k;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, LP6/k;-><init>(LI3/j;I)V

    invoke-virtual {v2, v3}, Llf/g;->b(Llf/d;)Llf/a;

    new-instance v0, Lnj/a;

    invoke-direct {v0, v1}, Lnj/a;-><init>(Landroidx/appcompat/app/o;)V

    invoke-static {v1}, LR7/j;->f(Landroid/content/Context;)LR7/i;

    move-result-object v2

    new-instance v3, LWc/c;

    invoke-direct {v3, v1}, LWc/c;-><init>(Landroid/content/Context;)V

    new-instance v4, Lta/f;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v1, v4, Lta/f;->m:Landroidx/appcompat/app/o;

    new-instance v5, LOc/e;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iput-object v0, v5, LOc/e;->b:Lnj/a;

    iput-object v2, v5, LOc/e;->c:LR7/i;

    iput-object v3, v5, LOc/e;->d:LWc/c;

    iput-object v4, v5, LOc/e;->a:Lta/f;

    const/4 v11, 0x0

    iput-object v11, v5, LOc/e;->f:LP6/m;

    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LL9/a;

    const/16 v3, 0x15

    invoke-direct {v2, v5, v3}, LL9/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, LFd/a;->P(Landroid/content/Context;)LI3/w;

    move-result-object v2

    new-instance v3, Lx9/f;

    invoke-direct {v3, v1}, Lx9/f;-><init>(Landroidx/appcompat/app/o;)V

    new-instance v4, Lwc/c;

    invoke-direct {v4, v0}, Lwc/c;-><init>(Ljava/lang/Integer;)V

    iput-object v2, v4, Lwc/c;->c:LI3/w;

    iput-object v3, v4, Lwc/c;->b:Lx9/f;

    if-eqz v7, :cond_23

    iput-object v4, v7, LIb/k;->k:Lwc/c;

    new-instance v0, LIb/f;

    const/4 v2, 0x1

    invoke-direct {v0, v7, v2}, LIb/f;-><init>(LIb/k;I)V

    iput-object v0, v4, Lwc/c;->d:LGb/d;

    :cond_23
    invoke-virtual {v4}, Lwc/c;->c()V

    new-instance v0, LA3/F;

    invoke-direct {v0, v1}, LA3/F;-><init>(Landroidx/appcompat/app/o;)V

    new-instance v2, LWc/c;

    const/16 v3, 0x11

    invoke-direct {v2, v1, v3}, LWc/c;-><init>(Ljava/lang/Object;I)V

    new-instance v3, LI3/w;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, LI3/w;-><init>(IZ)V

    iput-object v0, v3, LI3/w;->n:Ljava/lang/Object;

    iput-object v2, v3, LI3/w;->o:Ljava/lang/Object;

    iput-object v3, v7, LIb/k;->l:LI3/w;

    new-instance v0, LIb/f;

    const/4 v2, 0x3

    invoke-direct {v0, v7, v2}, LIb/f;-><init>(LIb/k;I)V

    iput-object v0, v3, LI3/w;->p:Ljava/lang/Object;

    goto :goto_f

    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t inject, mMainActivityHelper : "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mCalendar isPresent : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, LP6/Q;->d()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, LYd/d;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v1, v0}, LP6/k0;->b(Lcom/samsung/android/app/calendar/activity/MainActivity;Landroid/content/Intent;)J

    move-result-wide v2

    iget-object v0, v9, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_2b

    const-string v4, "init Calendar"

    const-string v5, "Calendar"

    invoke-static {v5, v4}, Llc/a;->o(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, LIb/k;->b:LIb/l;

    if-nez v4, :cond_24

    iget-object v4, v0, LIb/k;->a:LIb/m;

    invoke-virtual {v4, v12}, LIb/m;->f(Lhf/a;)LIb/l;

    move-result-object v4

    iput-object v4, v0, LIb/k;->b:LIb/l;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Set current present again during initializing Calendar, mCurrentPresenter : "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v0, LIb/k;->b:LIb/l;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Llc/a;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_25

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_25

    iget-object v4, v0, LIb/k;->p:LFh/a;

    invoke-virtual {v4, v2, v3}, LFh/a;->F(J)V

    :cond_25
    invoke-virtual {v0}, LIb/k;->G()V

    iget-object v2, v0, LIb/k;->n:LPc/h;

    if-eqz v2, :cond_29

    iget-object v3, v0, LIb/k;->p:LFh/a;

    const-string v4, "time"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move/from16 v4, v26

    iput-boolean v4, v2, LPc/h;->j:Z

    iget-object v2, v2, LPc/h;->d:LLc/c;

    if-eqz v2, :cond_29

    iget-object v2, v2, LLc/c;->f:Ljava/lang/Object;

    check-cast v2, LPc/f;

    if-eqz v2, :cond_29

    check-cast v2, Lcom/samsung/android/app/calendar/view/sidepane/SidePaneListViewImpl;

    invoke-static {}, Lxh/q;->i0()Z

    move-result v4

    if-eqz v4, :cond_26

    iget-object v2, v2, Lcom/samsung/android/app/calendar/view/sidepane/SidePaneListViewImpl;->m:Lcom/samsung/android/app/calendar/view/sidepane/SidePaneListViewPager;

    if-eqz v2, :cond_27

    invoke-virtual {v3}, LFh/a;->n()I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/app/calendar/view/sidepane/SidePaneListViewImpl;->b(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/calendar/view/sidepane/SidePaneListViewPager;->I(I)V

    goto :goto_10

    :cond_26
    iget-object v4, v2, Lcom/samsung/android/app/calendar/view/sidepane/SidePaneListViewImpl;->r:Landroid/os/Handler;

    new-instance v5, Log/o;

    const/4 v6, 0x6

    invoke-direct {v5, v6, v2, v3}, Log/o;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_27
    :goto_10
    sget-object v2, Lm2/p;->a:LYa/o;

    if-nez v2, :cond_28

    new-instance v2, LYa/o;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LYa/o;-><init>(IZ)V

    sput-object v2, Lm2/p;->a:LYa/o;

    :cond_28
    sget-object v2, Lm2/p;->a:LYa/o;

    invoke-static {v2}, Lkotlin/jvm/internal/j;->b(Ljava/lang/Object;)V

    invoke-virtual {v2}, LYa/o;->z()V

    :cond_29
    iget-object v2, v0, LIb/k;->v:Llf/h;

    if-eqz v2, :cond_2a

    invoke-virtual {v0}, LIb/k;->g()Lhf/a;

    move-result-object v3

    invoke-interface {v2, v3}, Llf/h;->c(Ljava/lang/Object;)V

    :cond_2a
    iget-object v2, v0, LIb/k;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_2b

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, LIb/k;->c(Z)V

    :cond_2b
    iget-object v0, v9, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_2c

    iput-object v1, v0, LIb/k;->z:Lcom/samsung/android/app/calendar/activity/MainActivity;

    :cond_2c
    if-eqz v0, :cond_2d

    iput-object v1, v0, LIb/k;->A:Lcom/samsung/android/app/calendar/activity/MainActivity;

    :cond_2d
    new-instance v2, LP6/p0;

    const/16 v3, 0xd

    invoke-direct {v2, v1, v3}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    if-eqz v0, :cond_2e

    iput-object v2, v0, LIb/k;->B:LP6/p0;

    :cond_2e
    new-instance v2, LP6/p0;

    const/16 v3, 0xe

    invoke-direct {v2, v1, v3}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    if-eqz v0, :cond_2f

    iput-object v2, v0, LIb/k;->C:LP6/p0;

    :cond_2f
    invoke-virtual {v9}, LP6/Q;->c()Z

    move-result v0

    if-nez v0, :cond_31

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lxd/o;->f(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_11

    :cond_30
    move v11, v10

    goto :goto_12

    :cond_31
    :goto_11
    const/4 v11, 0x1

    :goto_12
    invoke-virtual {v9, v11}, LP6/Q;->f(Z)V

    goto :goto_14

    :cond_32
    :goto_13
    const-string v0, "Can\'t run initCalendar because of activity status"

    invoke-static {v2, v0}, LYd/d;->m(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    invoke-static {v1}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lgh/a;->c:[Ljava/lang/String;

    invoke-static {v0, v2}, LRf/j;->X(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34

    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->j0:Z

    if-eqz p1, :cond_33

    new-instance v0, LP6/r0;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LP6/r0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    iget-object v1, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->p0:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_33
    invoke-virtual {v1}, Lcom/samsung/android/app/calendar/activity/MainActivity;->M()V

    :cond_34
    return-void
.end method

.method public final O()V
    .locals 14

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    invoke-virtual {v0}, LP6/Q;->d()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_f

    :cond_0
    invoke-static {}, Ltf/a;->o()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    invoke-static {}, LCf/i;->b()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "getBaseContext(...)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "com.android.calendar_preferences"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    const-string v5, "getSharedPreferences(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "key_need_to_import_demo_file"

    invoke-interface {v4, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "ICalendar"

    if-nez v6, :cond_1

    const-string v1, "[DemoUtils] Sample events were already imported."

    invoke-static {v7, v1}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    const-string v10, "Calendar_livedemo.vcs"

    invoke-direct {v9, v8, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v8, 0x0

    :try_start_0
    invoke-virtual {v6, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v9, 0x400

    :try_start_2
    new-array v9, v9, [B

    move v12, v3

    :goto_0
    const/4 v13, -0x1

    if-eq v12, v13, :cond_2

    invoke-virtual {v11, v9, v3, v12}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v6, v9}, Ljava/io/InputStream;->read([B)I

    move-result v12

    goto :goto_0

    :catchall_0
    move-exception v9

    goto :goto_1

    :cond_2
    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {v6, v8}, Lcom/bumptech/glide/c;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :catch_0
    move-exception v6

    goto :goto_3

    :catchall_1
    move-exception v9

    goto :goto_2

    :goto_1
    :try_start_5
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v12

    :try_start_6
    invoke-static {v11, v9}, Lcom/bumptech/glide/c;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_2
    :try_start_7
    throw v9
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v11

    :try_start_8
    invoke-static {v6, v9}, Lcom/bumptech/glide/c;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v11
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :goto_3
    const-string v9, "Fail to read demo assets"

    invoke-static {v7, v9, v6}, LYd/d;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    new-instance v6, Ljava/io/File;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-direct {v6, v9, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    move-object v8, v6

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "[DemoUtils] Importing from "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/samsung/android/app/icalendar/bnr/ImportCalendarDataService;

    invoke-direct {v7, v1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v8, "com.samsung.android.calendar.action.REQUEST_RESTORE_LOCAL_CALENDAR"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "uri_list"

    invoke-virtual {v7, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {v1, v7}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_5

    :cond_4
    const-string v6, "LiveDemo: No sample events data found. Requesting CalendarProvider to CREATE_DEMO_EVENTS."

    invoke-static {v7, v6}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.sec.android.intent.action.CREATE_DEMO_EVENTS"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "com.android.providers.calendar"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :goto_5
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, v5, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    :goto_6
    new-instance v1, LIb/i;

    const/16 v4, 0x13

    invoke-direct {v1, v4}, LIb/i;-><init>(I)V

    iget-object v4, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->N:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    invoke-static {p0}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lgh/a;->c:[Ljava/lang/String;

    invoke-static {v1, v4}, LRf/j;->X(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_7

    :cond_6
    invoke-static {}, Ltf/a;->A()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0}, LYd/a;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_7
    iget-object v1, v0, LP6/Q;->a:LIb/k;

    if-eqz v1, :cond_9

    invoke-virtual {v1, v3}, LIb/k;->H(Z)V

    goto :goto_8

    :cond_8
    :goto_7
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/calendar/activity/MainActivity;->L(Z)V

    :cond_9
    :goto_8
    iget-object v0, v0, LP6/Q;->a:LIb/k;

    new-instance v1, La4/b;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5}, La4/b;-><init>(IB)V

    new-instance v4, LAa/f;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, LAa/a;

    const/4 v6, 0x0

    invoke-direct {v5, v4, v6}, LAa/a;-><init>(LAa/f;I)V

    iput-object v5, v4, LAa/f;->u:LAa/a;

    new-instance v5, LAa/e;

    invoke-direct {v5, v4, v6}, LAa/e;-><init>(Ljava/lang/Object;I)V

    iput-object v5, v4, LAa/f;->v:LAa/e;

    iput-object v0, v4, LAa/f;->r:LIb/k;

    iput-object p0, v4, LAa/f;->m:Lcom/samsung/android/app/calendar/activity/MainActivity;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v5, v4, LAa/f;->q:Landroid/os/Handler;

    const v5, 0x7f0a0a5c

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroidx/swiperefreshlayout/widget/l;

    iput-object v5, v4, LAa/f;->o:Landroidx/swiperefreshlayout/widget/l;

    :try_start_9
    invoke-virtual {p0}, Landroidx/appcompat/app/o;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "status_bar_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    if-gtz v7, :cond_a

    move v6, v3

    goto :goto_9

    :cond_a
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    :goto_9
    invoke-virtual {p0}, Landroidx/appcompat/app/o;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070642

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    add-int/2addr v6, v7

    iput-boolean v2, v5, Landroidx/swiperefreshlayout/widget/l;->F:Z

    iput v3, v5, Landroidx/swiperefreshlayout/widget/l;->L:I

    iput v6, v5, Landroidx/swiperefreshlayout/widget/l;->M:I

    iput-boolean v2, v5, Landroidx/swiperefreshlayout/widget/l;->U:Z

    invoke-virtual {v5}, Landroidx/swiperefreshlayout/widget/l;->f()V

    iput-boolean v3, v5, Landroidx/swiperefreshlayout/widget/l;->o:Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_a

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a
    iget-object v5, v4, LAa/f;->o:Landroidx/swiperefreshlayout/widget/l;

    new-instance v6, LAa/b;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7}, LAa/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {p0}, Luh/f;->b(Landroid/content/Context;)Luh/f;

    move-result-object v5

    iput-object v5, v4, LAa/f;->n:Luh/f;

    new-instance v6, LAa/d;

    invoke-direct {v6, v4}, LAa/d;-><init>(LAa/f;)V

    invoke-virtual {v5, v4, v6}, Luh/f;->d(Ljava/lang/Object;Lvh/d;)V

    iget-object v5, v4, LAa/f;->o:Landroidx/swiperefreshlayout/widget/l;

    :try_start_a
    invoke-static {p0}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_c

    invoke-static {p0}, LYd/a;->b(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_b

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v6

    if-eqz v6, :cond_c

    goto :goto_b

    :catch_2
    move-exception p0

    goto :goto_c

    :cond_b
    :goto_b
    invoke-virtual {p0}, Landroidx/appcompat/app/o;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x42800000    # 64.0f

    mul-float/2addr p0, v6

    float-to-int p0, p0

    int-to-float p0, p0

    const v6, 0x3f99999a    # 1.2f

    mul-float/2addr p0, v6

    float-to-int p0, p0

    invoke-virtual {v5, p0}, Landroidx/swiperefreshlayout/widget/l;->setDistanceToTriggerSync(I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_d

    :goto_c
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_d
    new-instance p0, LAa/c;

    invoke-direct {p0, v4}, LAa/c;-><init>(LAa/f;)V

    invoke-virtual {v5, p0}, Landroidx/swiperefreshlayout/widget/l;->setOnChildScrollUpCallback(Landroidx/swiperefreshlayout/widget/i;)V

    new-instance p0, LAa/c;

    invoke-direct {p0, v4}, LAa/c;-><init>(LAa/f;)V

    invoke-virtual {v5, p0}, Landroidx/swiperefreshlayout/widget/l;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/j;)V

    iget-object p0, v4, LAa/f;->m:Lcom/samsung/android/app/calendar/activity/MainActivity;

    invoke-static {p0}, Lm2/w;->s(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_e

    :cond_d
    move v2, v3

    :cond_e
    :goto_e
    iput-boolean v2, v4, LAa/f;->s:Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "IsEmptyAccountForSync : "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v4, LAa/f;->s:Z

    const-string v3, "GestureSyncViewImpl"

    invoke-static {p0, v2, v3}, LMe/a;->w(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput-object v4, v1, La4/b;->n:Ljava/lang/Object;

    if-eqz v0, :cond_f

    iput-object v1, v0, LIb/k;->h:La4/b;

    new-instance p0, LIb/a;

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, LIb/a;-><init>(LIb/k;I)V

    iput-object p0, v4, LAa/f;->p:LIb/a;

    :cond_f
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    return-void

    :cond_10
    :goto_f
    const-string p0, "MainActivity"

    const-string v0, "initSecondBatch is not run"

    invoke-static {p0, v0}, LYd/d;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final P()V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    const-string v1, "MainActivity"

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_9

    :cond_0
    new-instance v0, Lcom/samsung/android/app/calendar/commonlocationpicker/N;

    iget-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, LP6/a;

    const/4 v4, 0x5

    invoke-direct {v3, v2, v4}, LP6/a;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/app/calendar/commonlocationpicker/N;->m:Ljava/lang/Object;

    new-instance v3, LYj/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v3, v0, Lcom/samsung/android/app/calendar/commonlocationpicker/N;->n:Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->f0:Lcom/samsung/android/app/calendar/commonlocationpicker/N;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/app/calendar/commonlocationpicker/N;->A(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    iget-object v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v0, LP6/H0;->d:Ljava/lang/Object;

    iget-object v5, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->S:LYj/a;

    iput-object v5, v0, LP6/H0;->h:Ljava/lang/Object;

    iput-object v3, v0, LP6/H0;->e:Ljava/lang/Object;

    invoke-static {p0}, Lcom/google/android/gms/internal/auth/l;->J(Landroid/content/Context;)Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_1

    invoke-static {p0, v5}, Lcom/google/android/gms/internal/auth/l;->m(Landroid/content/Context;Z)V

    :cond_1
    invoke-static {p0, v4}, Lm2/q;->p(Landroid/content/Context;Z)V

    invoke-static {p0}, Ln2/l;->H(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v6, "should_restore_accounts"

    invoke-interface {v3, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v7, "RestoreAccountPopup"

    if-nez v3, :cond_2

    const-string v3, "No need to restore accounts."

    invoke-static {v7, v3}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lm2/s;->n(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v3, "Already accounts exist."

    invoke-static {v7, v3}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v6, v4}, Ln2/l;->N(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :catch_0
    move-exception v3

    goto/16 :goto_2

    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LGg/a;

    iget-object v8, v8, LGg/a;->a:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v6}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v6

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v5, :cond_5

    sget v8, Ltg/j;->check_account_to_restored_title_multi:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_5
    sget v8, Ltg/j;->check_account_to_restored_title:I

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-static {v3}, Lm2/s;->m(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n\n"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v6, LD4/a;

    invoke-direct {v6, p0}, LD4/a;-><init>(Landroid/content/Context;)V

    iget-object v8, v6, LD4/a;->o:Ljava/lang/Object;

    check-cast v8, Landroidx/appcompat/app/i;

    iput-object v3, v8, Landroidx/appcompat/app/i;->f:Ljava/lang/CharSequence;

    sget v3, Ltg/j;->check_account_to_restored_btn_later:I

    new-instance v9, Lvh/b;

    invoke-direct {v9, p0, v4}, Lvh/b;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    invoke-virtual {v6, v3, v9}, LD4/a;->j(ILandroid/content/DialogInterface$OnClickListener;)V

    sget v3, Ltg/j;->check_account_to_restored_btn_add_new_account:I

    new-instance v9, Lvh/b;

    invoke-direct {v9, p0, v5}, Lvh/b;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    invoke-virtual {v6, v3, v9}, LD4/a;->m(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v3, LAh/i;

    const/16 v9, 0xa

    invoke-direct {v3, v9}, LAh/i;-><init>(I)V

    iput-object v3, v8, Landroidx/appcompat/app/i;->p:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v6}, LD4/a;->b()Landroidx/appcompat/app/l;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "Exception on checkAccountToRestore : "

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object v3, v0, LP6/H0;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    iget-object v6, v0, LP6/H0;->h:Ljava/lang/Object;

    check-cast v6, LYj/a;

    invoke-virtual {v3}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    new-instance v8, LA3/u;

    const/16 v9, 0xf

    invoke-direct {v8, v7, v9}, LA3/u;-><init>(Landroid/content/Context;I)V

    new-instance v7, Lik/j;

    invoke-direct {v7, v8, v4}, Lik/j;-><init>(Ljava/lang/Object;I)V

    sget-object v8, Lpk/e;->c:LVj/m;

    invoke-virtual {v7, v8}, LVj/d;->u(LVj/m;)Lik/n;

    move-result-object v7

    new-instance v8, LP6/l0;

    const/4 v9, 0x2

    invoke-direct {v8, v3, v9}, LP6/l0;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {v7, v8}, LVj/d;->r(Lak/c;)LYj/b;

    move-result-object v3

    invoke-virtual {v6, v3}, LYj/a;->a(LYj/b;)Z

    iget-object v0, v0, LP6/H0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v3, LMf/b;

    invoke-direct {v3, v0, v5}, LMf/b;-><init>(Landroid/app/Activity;I)V

    new-instance v0, Lik/y;

    invoke-direct {v0, v3}, Lik/y;-><init>(Ljava/util/concurrent/Callable;)V

    sget-object v3, Lpk/e;->c:LVj/m;

    invoke-virtual {v0, v3}, LVj/d;->u(LVj/m;)Lik/n;

    move-result-object v0

    invoke-static {}, LXj/b;->a()LXj/d;

    move-result-object v3

    invoke-virtual {v0, v3}, LVj/d;->n(LVj/m;)Lik/D;

    move-result-object v0

    invoke-virtual {v0}, LVj/d;->q()LYj/b;

    invoke-static {p0}, LRf/j;->N(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "preferences_clear_badge_count"

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const/4 v6, -0x1

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-static {p0, v3, v5}, LRf/j;->z0(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v0, "clearBadgeProvider entered"

    const-string v3, "BadgeUtils"

    invoke-static {v3, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.sec.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "badge_count_package_name"

    const-string v8, "com.samsung.android.calendar"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "badge_count_class_name"

    const-string v8, "com.android.calendar.AllInOneActivity"

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v7, "badge_count"

    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v7, 0x10000000

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "clearBadgeProvider : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->b0:LLa/f;

    iget-object v3, v0, LLa/f;->o:Ljava/lang/Object;

    check-cast v3, LP6/p0;

    :try_start_2
    iget-object v7, v0, LLa/f;->s:Ljava/lang/Object;

    check-cast v7, LT6/a;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "samsung.stickercenter.intent.PROCESS_COMPLETE"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, v3, LP6/p0;->n:Lcom/samsung/android/app/calendar/activity/MainActivity;

    invoke-static {v10, v7, v8, v9}, Lcom/samsung/shim/SemCompatBridge;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v7, v0, LLa/f;->t:Ljava/lang/Object;

    check-cast v7, LT6/b;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, v3, LP6/p0;->n:Lcom/samsung/android/app/calendar/activity/MainActivity;

    invoke-static {v10, v7, v8, v9}, Lcom/samsung/shim/SemCompatBridge;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iget-object v7, v0, LLa/f;->u:Ljava/lang/Object;

    check-cast v7, LT6/b;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v10, "com.samsung.android.weather.action.WEATHER_DATA_SYNC"

    invoke-virtual {v8, v10}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, v3, LP6/p0;->n:Lcom/samsung/android/app/calendar/activity/MainActivity;

    invoke-static {v3, v7, v8, v9}, Lcom/samsung/shim/SemCompatBridge;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    iput-boolean v5, v0, LLa/f;->n:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_5
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->c0:Lh9/f;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lh9/f;->c:J

    iget-object v3, v0, Lh9/f;->d:Landroid/net/ConnectivityManager;

    new-instance v7, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v7}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v7}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v7

    iget-object v8, v0, Lh9/f;->e:LE4/p;

    invoke-virtual {v3, v7, v8}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-boolean v5, v0, Lh9/f;->b:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_7

    goto/16 :goto_8

    :cond_7
    const-string v3, "ses_finder"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "initThirdBatch - isSesFinder."

    invoke-static {v1, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/calendar/activity/MainActivity;->I(Z)V

    :cond_8
    invoke-virtual {p0, v4}, Lcom/samsung/android/app/calendar/activity/MainActivity;->b0(Z)V

    sget-object v0, Lam/M;->a:Lhm/e;

    sget-object v0, Lhm/d;->o:Lhm/d;

    invoke-static {v0}, Lam/C;->b(Lxk/h;)LR0/o;

    move-result-object v1

    new-instance v3, LP6/T;

    const/4 v7, 0x0

    invoke-direct {v3, p0, v7, v5}, LP6/T;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;Lxk/c;I)V

    const/4 v8, 0x3

    invoke-static {v1, v7, v7, v3, v8}, Lam/C;->w(Lam/A;Lxk/h;Lam/B;LHk/m;I)Lam/w0;

    invoke-static {v0}, Lam/C;->b(Lxk/h;)LR0/o;

    move-result-object v1

    new-instance v3, LP6/T;

    invoke-direct {v3, p0, v7, v4}, LP6/T;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;Lxk/c;I)V

    invoke-static {v1, v7, v7, v3, v8}, Lam/C;->w(Lam/A;Lxk/h;Lam/B;LHk/m;I)Lam/w0;

    invoke-static {v0}, Lam/C;->b(Lxk/h;)LR0/o;

    move-result-object v0

    new-instance v1, LB7/f;

    invoke-direct {v1, p0, v7, v5}, LB7/f;-><init>(Landroid/content/Context;Lxk/c;I)V

    invoke-static {v0, v7, v7, v1, v8}, Lam/C;->w(Lam/A;Lxk/h;Lam/B;LHk/m;I)Lam/w0;

    sget-boolean v0, LRf/i;->a:Z

    const/16 v1, 0xc

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/Thread;

    new-instance v3, LAf/c;

    invoke-direct {v3, p0, v1}, LAf/c;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_9
    iget-object p0, v2, LP6/Q;->a:LIb/k;

    if-nez p0, :cond_a

    goto :goto_8

    :cond_a
    iget-object v0, p0, LIb/k;->b:LIb/l;

    if-eqz v0, :cond_f

    invoke-interface {v0}, LIb/l;->getCalendarType()Lhf/a;

    move-result-object v0

    sget-object v2, Lhf/a;->s:Lhf/a;

    if-eq v0, v2, :cond_b

    goto :goto_8

    :cond_b
    iget-object p0, p0, LIb/k;->b:LIb/l;

    check-cast p0, LEc/q;

    iget-object v0, p0, LEc/q;->a:LA2/b;

    if-nez v0, :cond_c

    goto :goto_8

    :cond_c
    iget-object v0, p0, LEc/q;->m:Le9/a;

    invoke-virtual {v0}, Le9/a;->e()LFh/a;

    move-result-object v0

    invoke-virtual {v0}, LFh/a;->n()I

    move-result v0

    iget-object v2, p0, LEc/q;->a:LA2/b;

    iget-object v3, v2, LA2/b;->n:Ljava/lang/Object;

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    sget-object v7, Lgh/a;->c:[Ljava/lang/String;

    invoke-static {v4, v7}, LRf/j;->X(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d

    new-instance v2, LDb/e;

    invoke-direct {v2, v1}, LDb/e;-><init>(I)V

    invoke-static {v2}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v1

    goto :goto_7

    :cond_d
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-string v4, "key_show_confetti"

    invoke-static {v3, v4, v6}, Ln2/l;->E(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_e

    new-instance v2, LDb/e;

    invoke-direct {v2, v1}, LDb/e;-><init>(I)V

    invoke-static {v2}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v1

    goto :goto_7

    :cond_e
    new-instance v1, LA6/b;

    invoke-direct {v1, v2, v0, v8}, LA6/b;-><init>(Ljava/lang/Object;II)V

    invoke-static {v1}, Llf/g;->a(Llf/e;)Llf/g;

    move-result-object v1

    :goto_7
    new-instance v2, LA6/b;

    invoke-direct {v2, p0, v0, v5}, LA6/b;-><init>(Ljava/lang/Object;II)V

    invoke-virtual {v1, v2}, Llf/g;->b(Llf/d;)Llf/a;

    :cond_f
    :goto_8
    return-void

    :cond_10
    :goto_9
    const-string p0, "initThirdBatch is not run"

    invoke-static {v1, p0}, LYd/d;->m(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Q(Landroid/os/Parcelable;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    if-nez p1, :cond_4

    new-instance p1, Lnj/a;

    iget-object v0, v0, LP6/Q;->a:LIb/k;

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    const/4 v2, 0x6

    invoke-direct {p1, v2}, Lnj/a;-><init>(I)V

    iput-object v0, p1, Lnj/a;->n:Ljava/lang/Object;

    iput-object p0, p1, Lnj/a;->o:Ljava/lang/Object;

    iput-object v1, p1, Lnj/a;->p:Ljava/lang/Object;

    iput-object p1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->O:Lnj/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lsc/c;

    invoke-direct {p0}, Lsc/c;-><init>()V

    iput-object p0, p1, Lnj/a;->s:Ljava/lang/Object;

    iget-object p0, p1, Lnj/a;->o:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/calendar/activity/MainActivity;

    new-instance v0, Lmi/a;

    invoke-direct {v0, p0}, Lmi/a;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;)V

    iput-object v0, p1, Lnj/a;->q:Ljava/lang/Object;

    iget-object p0, p1, Lnj/a;->o:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/calendar/activity/MainActivity;

    invoke-static {p0}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lq9/p;

    invoke-direct {v0, p0}, LIl/v;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lq9/p;->m0()V

    invoke-virtual {v0}, Lq9/p;->j0()V

    invoke-virtual {v0}, Lq9/p;->i0()V

    invoke-virtual {v0}, Lq9/p;->k0()V

    invoke-virtual {v0}, Lq9/p;->n0()V

    invoke-static {p0}, Luh/f;->b(Landroid/content/Context;)Luh/f;

    move-result-object p0

    iput-object p0, v0, Lq9/p;->w:Luh/f;

    goto :goto_0

    :cond_1
    new-instance v0, Lq9/k;

    invoke-direct {v0, p0}, Lq9/k;-><init>(Landroid/app/Activity;)V

    :goto_0
    iput-object v0, p1, Lnj/a;->r:Ljava/lang/Object;

    iget-object p0, p1, Lnj/a;->s:Ljava/lang/Object;

    check-cast p0, Lsc/c;

    iget-object v1, p1, Lnj/a;->q:Ljava/lang/Object;

    check-cast v1, Lmi/a;

    iput-object v1, p0, Lsc/c;->a:Lmi/a;

    iput-object v0, p0, Lsc/c;->c:LIl/v;

    iget-object p0, p1, Lnj/a;->o:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/app/calendar/activity/MainActivity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LY7/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LY7/g;-><init>(Landroid/content/Context;Z)V

    iget-object p0, p1, Lnj/a;->s:Ljava/lang/Object;

    check-cast p0, Lsc/c;

    iput-object v0, p0, Lsc/c;->b:LY7/g;

    iget-object v0, p1, Lnj/a;->n:Ljava/lang/Object;

    check-cast v0, LIb/k;

    iput-object p0, v0, LIb/k;->d:Lsc/c;

    iget-object v0, v0, LIb/k;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    iget-object p0, p0, Lsc/c;->c:LIl/v;

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {p0, v1}, LIl/v;->f0(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, LIl/v;->U()V

    :goto_1
    invoke-virtual {p1}, Lnj/a;->T()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->O:Lnj/a;

    iget-object v0, v0, LP6/Q;->a:LIb/k;

    iget-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    iput-object v0, v1, Lnj/a;->n:Ljava/lang/Object;

    iput-object p0, v1, Lnj/a;->o:Ljava/lang/Object;

    iput-object v2, v1, Lnj/a;->p:Ljava/lang/Object;

    iget-object v0, v1, Lnj/a;->q:Ljava/lang/Object;

    check-cast v0, Lmi/a;

    if-eqz v0, :cond_5

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, v0, Lmi/a;->n:Ljava/lang/Object;

    :cond_5
    iget-object v0, v1, Lnj/a;->r:Ljava/lang/Object;

    check-cast v0, LIl/v;

    if-eqz v0, :cond_6

    iget-object v1, v1, Lnj/a;->o:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/app/calendar/activity/MainActivity;

    invoke-virtual {v0, v1, p1}, LIl/v;->C(Lcom/samsung/android/app/calendar/activity/MainActivity;Landroid/os/Parcelable;)V

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->O:Lnj/a;

    invoke-virtual {p0}, Lnj/a;->T()V

    return-void
.end method

.method public final R()V
    .locals 3

    invoke-static {p0}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, LYd/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xe

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "lockActivityForDrawing "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MainActivity"

    invoke-static {v2, v1}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final S(Lhf/a;)V
    .locals 3

    invoke-static {p0}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LP6/q0;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, LP6/q0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_0
    const v0, 0x7f0a05af

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, LGf/a;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_1
    sget-boolean v0, Lm9/T;->a:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->s0:Lg9/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lg9/b;->d(Lhf/a;)V

    :cond_2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, LP6/n0;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, LP6/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final T(LUb/a;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "intent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "penDrawingEventType"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lxd/o;->f(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, LUb/a;->p:LUb/a;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "finish_by_home_up"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const v0, 0x7f0a05af

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object p0

    instance-of v0, p0, LC9/b;

    if-eqz v0, :cond_1

    check-cast p0, LC9/b;

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LBg/b;

    const/16 v1, 0x12

    invoke-direct {v0, p1, v1}, LBg/b;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final U()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFinishDrawingEdit : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    iget-object v2, v1, LP6/Q;->a:LIb/k;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MainActivity"

    invoke-static {v2, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lug/a;

    invoke-static {}, Lh9/l;->h0()Z

    move-result v2

    invoke-direct {v0, v2}, Lug/a;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->updateOnBackInvokedCallbackWithPriority(Lug/a;)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, LP6/Q;->f(Z)V

    invoke-virtual {v1, v0}, LP6/Q;->j(Z)V

    iget-object v1, v1, LP6/Q;->a:LIb/k;

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    iget-object v3, v1, LIb/k;->f:Lp7/f;

    if-eqz v3, :cond_5

    iget-object v1, v1, LIb/k;->b:LIb/l;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v3, Lp7/f;->n:Ljava/lang/Object;

    check-cast v1, Lo9/b;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, v1, Lo9/b;->r:Lcom/samsung/android/app/calendar/activity/MainActivity;

    invoke-static {v3}, Lh9/l;->i0(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, v1, Lo9/b;->o:Lcom/samsung/android/libcalendar/platform/winset/CalendarFloatingActionButton;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_3

    iget v3, v1, Lcom/samsung/android/libcalendar/platform/winset/CalendarFloatingActionButton;->n:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_3
    iget v3, v1, Lcom/samsung/android/libcalendar/platform/winset/CalendarFloatingActionButton;->n:I

    if-eq v3, v2, :cond_4

    :goto_0
    iget-object v3, v1, Lcom/samsung/android/libcalendar/platform/winset/CalendarFloatingActionButton;->p:LCh/a;

    invoke-virtual {v1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    iget-object v3, v1, Lcom/samsung/android/libcalendar/platform/winset/CalendarFloatingActionButton;->q:LCh/a;

    invoke-virtual {v1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_5
    :goto_1
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->s0:Lg9/b;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v3, LIb/i;

    const/16 v4, 0x15

    invoke-direct {v3, v4}, LIb/i;-><init>(I)V

    invoke-virtual {v1, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lxd/o;->f(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "onNewIntent"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "finish_by_home_up"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_6
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/calendar/activity/MainActivity;->b0(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->Y(Z)V

    return-void
.end method

.method public final V(Z)V
    .locals 5

    new-instance v0, Lug/a;

    invoke-direct {v0, p1}, Lug/a;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->updateOnBackInvokedCallbackWithPriority(Lug/a;)V

    sget-boolean v0, Lm9/T;->a:Z

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, LP6/r0;

    const/4 v2, 0x6

    invoke-direct {v0, p0, v2}, LP6/r0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    const-wide/16 v2, 0x64

    iget-object v4, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->p0:Landroid/os/Handler;

    invoke-virtual {v4, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->s0:Lg9/b;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, LP6/Q;->b()Lhf/a;

    move-result-object v2

    invoke-virtual {v0, v2}, Lg9/b;->d(Lhf/a;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, LF7/f;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, LF7/f;-><init>(I)V

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, LP6/o0;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, LP6/o0;-><init>(Ljava/lang/Object;I)V

    new-instance v1, LP6/u0;

    invoke-direct {v1, p0, v0, v2}, LP6/u0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;Ljava/util/function/Supplier;Lo1/a;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, LF7/f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LF7/f;-><init>(I)V

    new-instance v1, LP6/o0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, LP6/o0;-><init>(Ljava/lang/Object;I)V

    new-instance v2, LP6/u0;

    invoke-direct {v2, p0, v0, v1}, LP6/u0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;Ljava/util/function/Supplier;Lo1/a;)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_3
    return-void
.end method

.method public final W(Landroid/content/Intent;)V
    .locals 2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lm2/s;->o()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lh9/l;->g0(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "preferences_deny_network_permission_dialog"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, LRf/j;->M(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    invoke-virtual {v1}, LP6/Q;->b()Lhf/a;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, LP6/H0;->i(Landroid/content/Intent;Lhf/a;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->g0:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final X(Landroid/graphics/Insets;)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    iget-object v1, v0, LP6/Q;->a:LIb/k;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v1, LIb/k;->i:LGc/a;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, LDd/a;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v4}, LDd/a;-><init>(Landroid/graphics/Insets;I)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v1, LIb/k;->b:LIb/l;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LDd/a;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, LDd/a;-><init>(Landroid/graphics/Insets;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    const v1, 0x7f0a05ab

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, LP6/Q;->b()Lhf/a;

    move-result-object v0

    invoke-static {v0}, Lhf/a;->b(Lhf/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, LYd/a;->b(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/graphics/Insets;->left:I

    iget p1, p1, Landroid/graphics/Insets;->right:I

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_1
    return-void

    :cond_2
    iget p0, p1, Landroid/graphics/Insets;->left:I

    iget v0, p1, Landroid/graphics/Insets;->top:I

    iget v2, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v1, p0, v0, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public final Y(Z)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/samsung/android/tsp/SemTspStateManager;->setSensitivePalmRecognitionEnabled(Landroid/view/View;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string p1, "MainActivity"

    const-string v0, "setSensitivePalmRecognitionEnabled() "

    invoke-static {p0, v0, p1}, LMe/a;->q(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final Z(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->B()Ljava/lang/String;

    move-result-object p0

    const-string v1, "view"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "description"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "screenId"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/16 v2, 0x1388

    invoke-static {v2, v1, p1, v0}, LB6/s;->k(IILjava/lang/CharSequence;Landroid/view/View;)LB6/s;

    move-result-object p1

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f13089d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lh9/m;

    const/4 v2, 0x1

    invoke-direct {v1, p3, v2, p2, p0}, Lh9/m;-><init>(Landroid/view/View$OnClickListener;ZZLjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, LB6/s;->l(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lh9/n;

    invoke-direct {v0, v2, p2, p0, p1}, Lh9/n;-><init>(ZZLjava/lang/String;LB6/s;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {p3, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final a0()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    if-nez v0, :cond_0

    new-instance v0, LP6/H0;

    iget-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    iget-object v3, v1, LP6/Q;->a:LIb/k;

    iget-object v4, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->S:LYj/a;

    invoke-direct {v0, p0, v2, v3, v4}, LP6/H0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;LP6/i;LIb/k;LYj/a;)V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    iget-object v2, v0, LP6/H0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    iget-object v3, v0, LP6/H0;->h:Ljava/lang/Object;

    check-cast v3, LYj/a;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, LVj/n;->i(J)Ljk/l;

    move-result-object v4

    new-instance v5, LP6/B0;

    const/4 v6, 0x1

    invoke-direct {v5, v0, v2, v6}, LP6/B0;-><init>(LP6/H0;Landroid/content/Context;I)V

    new-instance v2, Lek/f;

    sget-object v6, Lck/c;->e:Landroidx/lifecycle/O;

    invoke-direct {v2, v5, v6}, Lek/f;-><init>(Lak/c;Lak/c;)V

    invoke-virtual {v4, v2}, LVj/n;->f(LVj/p;)V

    invoke-virtual {v3, v2}, LYj/a;->a(LYj/b;)Z

    invoke-virtual {v0}, LP6/H0;->l()V

    iget-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->j0:Z

    if-eqz v0, :cond_1

    iget-object v0, v1, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LIb/k;->D()V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, LP6/Q;->h()V

    :cond_2
    :goto_0
    new-instance v0, Lh9/a;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lh9/a;-><init>(Z)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->onAddButtonChangeEvent(Lh9/a;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->a0:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {v1}, LP6/Q;->l()V

    iput-boolean v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->a0:Z

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->j0:Z

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

.method public final b0(Z)V
    .locals 4

    invoke-static {}, Ltf/a;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    iget-object p0, p0, LP6/Q;->a:LIb/k;

    if-eqz p0, :cond_1

    iget-object v0, p0, LIb/k;->b:LIb/l;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LB9/B0;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, LB9/B0;-><init>(ZIB)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LIb/k;->H(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final c0(Lhf/a;)V
    .locals 2

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LP9/A0;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, LP9/A0;-><init>(I)V

    const-string v1, "map(...)"

    invoke-static {v0, p0, v1}, LMe/a;->n(LP9/A0;Ljava/util/Optional;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, LP6/s0;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1}, LP6/s0;-><init>(ILhf/a;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-super/range {p0 .. p3}, Landroidx/fragment/app/E;->onActivityResult(IILandroid/content/Intent;)V

    const-string v4, "onActivityResult - requestCode: "

    const-string v5, ", resultCode: "

    const-string v6, "MainActivity"

    invoke-static {v1, v4, v2, v5, v6}, Lcom/samsung/android/rubin/sdk/module/fence/a;->u(ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    const/16 v2, 0x2bf

    if-ne v2, v1, :cond_2b

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    if-eqz v3, :cond_2

    const-string v7, "is_copy_event"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v1, v0, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    if-nez v1, :cond_1

    goto/16 :goto_6

    :cond_1
    invoke-virtual {v3, v7, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2b

    const-string v1, "beginTime"

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    const-string v1, "endTime"

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    const-string v1, "copy_event_id"

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v13

    iget-object v1, v0, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    iget-object v0, v0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    invoke-virtual {v0}, LP6/Q;->b()Lhf/a;

    move-result-object v12

    invoke-virtual {v1}, LP6/i;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, LGb/b;->a()LGb/b;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lxh/q;->K(Landroid/app/Activity;Landroid/content/Intent;LGb/b;)Landroid/os/Bundle;

    move-result-object v15

    invoke-virtual {v1}, LP6/i;->b()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v7, LP6/e;

    invoke-direct/range {v7 .. v15}, LP6/e;-><init>(JJLhf/a;JLandroid/os/Bundle;)V

    invoke-virtual {v0, v7}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_2
    iget-object v0, v0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    if-eqz v0, :cond_2b

    iget-object v7, v0, LP6/H0;->f:Ljava/lang/Object;

    move-object v8, v7

    check-cast v8, LIb/k;

    iget-object v7, v0, LP6/H0;->g:Ljava/lang/Object;

    check-cast v7, LP6/d0;

    if-nez v7, :cond_4

    if-nez v8, :cond_3

    goto :goto_0

    :cond_3
    new-instance v7, LP6/d0;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v0, LP6/H0;->g:Ljava/lang/Object;

    iget-object v9, v8, LIb/k;->m:Lxc/u;

    iput-object v9, v7, LP6/d0;->a:Lxc/u;

    goto :goto_0

    :cond_4
    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v7

    new-instance v9, LL9/a;

    const/16 v10, 0x13

    invoke-direct {v9, v0, v10}, LL9/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v7, v9}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_0
    iget-object v7, v0, LP6/H0;->d:Ljava/lang/Object;

    check-cast v7, Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/Activity;

    const/16 v9, 0x64

    if-eq v1, v9, :cond_28

    const/16 v9, 0x65

    if-eq v1, v9, :cond_28

    const/16 v9, 0x7b

    if-eq v1, v9, :cond_27

    const/16 v9, 0xc8

    if-eq v1, v9, :cond_28

    const/16 v9, 0x190

    if-eq v1, v9, :cond_28

    const/16 v9, 0x1f4

    if-eq v1, v9, :cond_28

    const/16 v9, 0x258

    if-eq v1, v9, :cond_28

    const/16 v9, 0x2bc

    if-eq v1, v9, :cond_21

    const/16 v9, 0x320

    if-eq v1, v9, :cond_28

    const/16 v9, 0x3ec

    if-eq v1, v9, :cond_20

    const/16 v9, 0x2715

    const/4 v10, 0x1

    const-string v11, "space_id"

    const-string v12, "alert_time"

    if-eq v1, v9, :cond_1c

    packed-switch v1, :pswitch_data_0

    const-string v9, "requestGoogleConsent"

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    const-wide/16 v14, -0x1

    const-string v9, "searchFilterStickerList"

    const-string v11, "searchFilterColorList"

    const-string v12, "searchFilterCalendarList"

    const/4 v13, 0x3

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_3

    goto/16 :goto_6

    :pswitch_0
    if-eqz v8, :cond_2b

    const-string v1, "is_start_search_main"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "searchInfo"

    const-class v6, Lnc/q;

    invoke-static {v3, v1, v6}, Lcom/samsung/shim/SemCompatBridge;->getSerializableExtra(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Class;)Ljava/io/Serializable;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lnc/q;

    const-string v1, "isActionMode"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "checkedItem"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ljava/util/ArrayList;

    const-string v1, "checkedSectionItem"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljava/util/ArrayList;

    new-instance v14, Lnc/k;

    const/4 v15, 0x0

    const/16 v19, 0x3

    invoke-direct/range {v14 .. v19}, Lnc/k;-><init>(ZLnc/q;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    goto :goto_1

    :cond_5
    new-instance v14, Lnc/k;

    const/16 v18, 0x0

    const/16 v19, 0x3b

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v14 .. v19}, Lnc/k;-><init>(ZLnc/q;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    :goto_1
    iput-boolean v10, v14, Lnc/k;->b:Z

    invoke-virtual {v8, v14}, LIb/k;->b(Lnc/k;)V

    const-string v1, "searchOpenFilterType"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v10, :cond_8

    if-eq v1, v5, :cond_7

    if-eq v1, v13, :cond_6

    goto/16 :goto_6

    :cond_6
    invoke-virtual {v3, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v0, v0, LP6/H0;->e:Ljava/lang/Object;

    check-cast v0, LP6/i;

    invoke-virtual {v0, v1}, LP6/i;->l(Ljava/util/ArrayList;)V

    return-void

    :cond_7
    invoke-virtual {v3, v11}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, LP6/H0;->e:Ljava/lang/Object;

    check-cast v0, LP6/i;

    invoke-virtual {v0, v1}, LP6/i;->m(Ljava/util/ArrayList;)V

    return-void

    :cond_8
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, LP6/H0;->e:Ljava/lang/Object;

    check-cast v0, LP6/i;

    invoke-virtual {v0, v1}, LP6/i;->n(Ljava/util/ArrayList;)V

    return-void

    :cond_9
    const-string v0, "extra_selected_millis"

    invoke-virtual {v3, v0, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, LIb/k;->n(J)V

    invoke-virtual {v8}, LIb/k;->g()Lhf/a;

    move-result-object v0

    sget-object v1, Lhf/a;->t:Lhf/a;

    sget-object v3, Lhf/a;->s:Lhf/a;

    if-eq v0, v1, :cond_b

    sget-object v1, Lhf/a;->o:Lhf/a;

    if-ne v0, v1, :cond_a

    goto :goto_2

    :cond_a
    if-ne v0, v3, :cond_2b

    invoke-virtual {v8}, LIb/k;->B()V

    return-void

    :cond_b
    :goto_2
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_need_month_popup"

    invoke-virtual {v0, v1, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_c
    invoke-virtual {v8, v3, v2}, LIb/k;->q(Lhf/a;Z)V

    return-void

    :pswitch_1
    const-string v1, "searchFilterType"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v4, "searchFormChange"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_10

    const-wide/16 v6, 0x64

    if-eq v1, v10, :cond_f

    if-eq v1, v5, :cond_e

    if-eq v1, v13, :cond_d

    goto/16 :goto_6

    :cond_d
    invoke-virtual {v3, v12}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, LP6/D0;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v1, v4}, LP6/D0;-><init>(LP6/H0;Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_e
    invoke-virtual {v3, v11}, Landroid/content/Intent;->getIntegerArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, LP6/D0;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v1, v4}, LP6/D0;-><init>(LP6/H0;Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_f
    invoke-virtual {v3, v9}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, LP6/D0;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v4}, LP6/D0;-><init>(LP6/H0;Ljava/util/ArrayList;I)V

    invoke-virtual {v2, v3, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_10
    if-eq v1, v10, :cond_13

    if-eq v1, v5, :cond_12

    if-eq v1, v13, :cond_11

    goto/16 :goto_6

    :cond_11
    const-string v0, "moreSearchFilterCalendarResult"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lnc/p;

    invoke-static {v0}, Lnc/q;->a(Lnc/p;)Lnc/q;

    move-result-object v0

    iget-object v1, v8, LIb/k;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v8, LIb/k;->c:Lnc/i;

    if-eqz v1, :cond_2b

    invoke-virtual {v1, v0}, Lnc/i;->T(Lnc/q;)V

    return-void

    :cond_12
    const-string v1, "moreSearchFilterColorResult"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, LA6/c;

    const/16 v4, 0x9

    invoke-direct {v3, v0, v1, v4}, LA6/c;-><init>(Ljava/lang/Object;II)V

    const-wide/16 v0, 0x5

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_13
    const-string v0, "moreSearchFilterStickerResult"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnc/q;->d(Ljava/lang/String;)Lnc/q;

    move-result-object v0

    iget-object v1, v8, LIb/k;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v8, LIb/k;->c:Lnc/i;

    if-eqz v1, :cond_2b

    invoke-virtual {v1, v0}, Lnc/i;->T(Lnc/q;)V

    return-void

    :pswitch_2
    if-eqz v8, :cond_2b

    const-string v0, "quick_add_text"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "quick_add_date_text"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "quick_add_extracted_text"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v0, "quick_add_period"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lmf/b;

    const-string v0, "quick_add_date_time_type"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    invoke-virtual/range {v8 .. v13}, LIb/k;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/b;I)V

    const-string v0, "quick_add_parsed_time_start"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "quick_add_parsed_time_end"

    invoke-virtual {v3, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    const-string v4, "quick_add_parsed_is_all_day"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    invoke-virtual {v3, v1, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v8, v9, v10, v0, v1}, LIb/k;->M(JJ)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {v8, v0}, LIb/k;->L(Z)V

    goto :goto_3

    :cond_14
    const-wide/16 v5, 0x0

    invoke-virtual {v8, v5, v6, v5, v6}, LIb/k;->M(JJ)V

    invoke-virtual {v8, v2}, LIb/k;->L(Z)V

    :goto_3
    const-string v0, "quick_add_saved_day_millis"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15

    invoke-virtual {v3, v0, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, LIb/k;->n(J)V

    :cond_15
    const-string v0, "quick_add_lunar_date_mode"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, v8, LIb/k;->i:LGc/a;

    if-eqz v1, :cond_2b

    iget-object v1, v1, LGc/a;->a:LZ9/j;

    if-eqz v1, :cond_2b

    iput v0, v1, LZ9/j;->r:I

    return-void

    :pswitch_3
    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LP6/A0;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v3}, LP6/A0;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_4
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1, v3}, LP6/H0;->h(ILandroid/content/Intent;)V

    return-void

    :pswitch_5
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1, v3}, LP6/H0;->h(ILandroid/content/Intent;)V

    return-void

    :pswitch_6
    const-string v0, "extra_pause_alert_state"

    invoke-virtual {v3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LB9/p0;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, LB9/p0;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_7
    if-nez v3, :cond_16

    goto/16 :goto_6

    :cond_16
    const/16 v0, 0x385

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v8, LIb/k;->m:Lxc/u;

    new-instance v1, LLb/d;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, LLb/d;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lxc/u;->m(La/a;)V

    return-void

    :pswitch_8
    if-nez v3, :cond_17

    goto/16 :goto_6

    :cond_17
    const/16 v0, 0x384

    invoke-virtual {v3, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, v8, LIb/k;->m:Lxc/u;

    new-instance v1, LLb/b;

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v1, v2}, LLb/b;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lxc/u;->m(La/a;)V

    return-void

    :pswitch_9
    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, LP6/A0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v3}, LP6/A0;-><init>(ILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :pswitch_a
    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LIb/i;

    const/16 v5, 0x17

    invoke-direct {v4, v5}, LIb/i;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    invoke-static {v7}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {v8}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v4, LIb/i;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, LIb/i;-><init>(I)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_18
    :pswitch_b
    if-eqz v3, :cond_2b

    if-nez v8, :cond_19

    goto/16 :goto_6

    :cond_19
    const-string v1, "extra_is_from_reminder"

    invoke-virtual {v3, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1b

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v12, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v2, v0, v5

    if-eqz v2, :cond_1a

    invoke-virtual {v8, v0, v1}, LIb/k;->n(J)V

    :cond_1a
    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2b

    invoke-static {}, LGm/d;->b()LGm/d;

    move-result-object v3

    new-instance v13, LP6/P0;

    const-wide/16 v14, -0x1

    const/16 v20, 0x0

    move-wide/from16 v18, v0

    move-wide/from16 v16, v0

    invoke-direct/range {v13 .. v20}, LP6/P0;-><init>(JJJLcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;)V

    iput-boolean v10, v13, LP6/P0;->e:Z

    iput-object v2, v13, LP6/P0;->g:Ljava/lang/String;

    invoke-virtual {v3, v13}, LGm/d;->f(Ljava/lang/Object;)V

    return-void

    :cond_1b
    iget-object v1, v0, LP6/H0;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, LP6/k0;->a(Landroid/content/Context;Landroid/content/Intent;)J

    move-result-wide v1

    invoke-virtual {v8, v1, v2}, LIb/k;->n(J)V

    invoke-virtual {v0, v3}, LP6/H0;->f(Landroid/content/Intent;)V

    return-void

    :cond_1c
    if-eqz v8, :cond_2b

    if-eqz v3, :cond_2b

    if-nez v7, :cond_1d

    goto/16 :goto_6

    :cond_1d
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v12, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v4, "is_saved"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v3, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "group_id"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "group_type"

    invoke-virtual {v3, v9, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-nez v6, :cond_1e

    const-string v6, "LOCAL_SPACE"

    :cond_1e
    if-nez v7, :cond_1f

    const-string v7, "LOCAL_GROUP"

    :cond_1f
    const-string v3, "key_reminder_last_saved_space_id"

    invoke-static {v5, v3, v6}, LRf/j;->x0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_reminder_last_saved_group_id"

    invoke-static {v5, v3, v7}, LRf/j;->x0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "key_reminder_last_saved_group_type"

    invoke-static {v5, v3, v2}, LRf/j;->v0(Landroid/content/Context;Ljava/lang/String;I)V

    if-eqz v4, :cond_2b

    const-wide/16 v16, 0x0

    cmp-long v2, v0, v16

    if-eqz v2, :cond_2b

    invoke-virtual {v8, v0, v1}, LIb/k;->n(J)V

    invoke-static {}, LGm/d;->b()LGm/d;

    move-result-object v2

    new-instance v13, LP6/P0;

    const-wide/16 v14, -0x1

    const/16 v20, 0x0

    move-wide/from16 v18, v0

    move-wide/from16 v16, v0

    invoke-direct/range {v13 .. v20}, LP6/P0;-><init>(JJJLcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;)V

    iput-boolean v10, v13, LP6/P0;->e:Z

    iput-object v6, v13, LP6/P0;->g:Ljava/lang/String;

    invoke-virtual {v2, v13}, LGm/d;->f(Ljava/lang/Object;)V

    return-void

    :cond_20
    if-eqz v8, :cond_2b

    iget-object v0, v8, LIb/k;->m:Lxc/u;

    new-instance v1, LLb/m;

    invoke-direct {v1, v3}, LLb/m;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lxc/u;->m(La/a;)V

    return-void

    :cond_21
    invoke-static {v7}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v5, LIb/i;

    const/16 v6, 0x19

    invoke-direct {v5, v6}, LIb/i;-><init>(I)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    const-string v1, "detail_source_view"

    invoke-virtual {v3, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lhf/a;->a(I)Lhf/a;

    move-result-object v1

    sget-object v4, Lhf/a;->q:Lhf/a;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "event_sticker_id"

    const-string v5, "event_sticker_event_code"

    if-eqz v1, :cond_24

    iget-object v1, v0, LP6/H0;->g:Ljava/lang/Object;

    check-cast v1, LP6/d0;

    if-eqz v1, :cond_25

    const-string v6, "notifyStickerResult"

    const-string v7, "DetailResultHandler"

    invoke-static {v7, v6}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, LP6/d0;->a:Lxc/u;

    if-nez v6, :cond_22

    const-string v1, "mDetailNotifier is null"

    invoke-static {v7, v1}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_22
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_23

    aget-object v8, v7, v2

    invoke-static {v8}, LYd/h;->b(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_23

    aget-object v2, v7, v2

    invoke-virtual {v6, v4, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, LP6/d0;->a:Lxc/u;

    new-instance v2, LLb/n;

    invoke-direct {v2, v6}, LLb/n;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lxc/u;->m(La/a;)V

    goto :goto_4

    :cond_24
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v8, :cond_25

    iget-object v3, v8, LIb/k;->b:LIb/l;

    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, LB9/B;

    invoke-direct {v4, v8, v1, v2}, LB9/B;-><init>(LIb/k;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v8, LIb/k;->n:LPc/h;

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, LDb/r;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, LDb/r;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_25
    :goto_4
    iget-object v0, v0, LP6/H0;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_26

    goto :goto_6

    :cond_26
    check-cast v0, Landroid/app/Activity;

    const-string v1, "com.samsung.android.calendar.ACTION_DAY_STICKER_CHANGED"

    invoke-static {v0, v1}, LP6/H0;->k(Landroid/app/Activity;Ljava/lang/String;)V

    return-void

    :cond_27
    iget-object v0, v8, LIb/k;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, v8, LIb/k;->c:Lnc/i;

    if-eqz v0, :cond_2b

    invoke-virtual {v0, v4, v3}, Lnc/i;->U(ILandroid/content/Intent;)V

    return-void

    :cond_28
    :pswitch_c
    iget-object v2, v0, LP6/H0;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_2a

    invoke-static {v2}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_5

    :cond_29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, LA6/c;

    invoke-direct {v2, v1, v3}, LA6/c;-><init>(ILandroid/content/Intent;)V

    const-wide/16 v3, 0x5dc

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2a
    :goto_5
    iget-object v0, v0, LP6/H0;->g:Ljava/lang/Object;

    check-cast v0, LP6/d0;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LB9/a2;

    const/4 v4, 0x5

    invoke-direct {v2, v1, v3, v4}, LB9/a2;-><init>(ILjava/lang/Object;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_2b
    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_c
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x384
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3e8
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2711
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAddButtonChangeEvent(Lh9/a;)V
    .locals 2
    .annotation runtime LGm/j;
    .end annotation

    iget-boolean p1, p1, Lh9/a;->a:Z

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    if-eqz p1, :cond_3

    sget-object p1, Lhf/a;->q:Lhf/a;

    invoke-virtual {p0}, LP6/Q;->b()Lhf/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, LP6/Q;->a:LIb/k;

    if-eqz p1, :cond_0

    iget-object p1, p1, LIb/k;->b:LIb/l;

    if-eqz p1, :cond_0

    invoke-interface {p1}, LIb/l;->g()Z

    move-result v0

    :cond_0
    if-nez v0, :cond_4

    :cond_1
    iget-object p0, p0, LP6/Q;->a:LIb/k;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, LIb/k;->t(Z)V

    return-void

    :cond_3
    iget-object p0, p0, LP6/Q;->a:LIb/k;

    if-nez p0, :cond_5

    :cond_4
    :goto_0
    return-void

    :cond_5
    invoke-virtual {p0, v0}, LIb/k;->t(Z)V

    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    sget-object v0, LRf/q;->b:Ljava/util/HashMap;

    invoke-static {p0}, LRf/j;->g(I)LRf/q;

    move-result-object p0

    const-string v0, "windowInsets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, LRf/q;->a:Landroid/view/WindowInsets;

    invoke-virtual {p1, p2}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public final onBackPressed()V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, LP6/H0;->c:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LP6/H0;->c()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    invoke-virtual {v0}, LP6/Q;->d()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v0, "MainActivity"

    const-string v1, "onBackPressed, mCalendar is null"

    invoke-static {v0, v1}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/shim/SemCompatBridge;->getOnBackInvokedDispatcher(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/shim/SemCompatBridge;->unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->d0:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, LP6/Q;->a:LIb/k;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    iget-object v3, v1, LIb/k;->r:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    iget-object v3, v1, LIb/k;->z:Lcom/samsung/android/app/calendar/activity/MainActivity;

    if-eqz v3, :cond_3

    sget-object v1, LUb/a;->q:LUb/a;

    invoke-virtual {v3, v1}, Lcom/samsung/android/app/calendar/activity/MainActivity;->T(LUb/a;)V

    :cond_2
    :goto_0
    move v1, v4

    goto :goto_3

    :cond_3
    iget-object v3, v1, LIb/k;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v1, v1, LIb/k;->c:Lnc/i;

    if-nez v1, :cond_5

    :cond_4
    :goto_1
    move v1, v2

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Lnc/i;->B()Z

    goto :goto_0

    :cond_6
    iget-object v3, v1, LIb/k;->b:LIb/l;

    if-nez v3, :cond_7

    goto :goto_1

    :cond_7
    invoke-interface {v3}, LIb/l;->getCalendarType()Lhf/a;

    move-result-object v3

    sget-object v5, Lhf/a;->q:Lhf/a;

    if-ne v3, v5, :cond_8

    iget-object v3, v1, LIb/k;->b:LIb/l;

    invoke-interface {v3}, LIb/l;->g()Z

    move-result v3

    if-eqz v3, :cond_9

    :cond_8
    iget-object v3, v1, LIb/k;->b:LIb/l;

    invoke-interface {v3}, LIb/l;->B()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_9
    iget-object v3, v1, LIb/k;->d:Lsc/c;

    if-eqz v3, :cond_a

    :try_start_0
    iget-object v3, v3, Lsc/c;->c:LIl/v;

    invoke-virtual {v3, v4, v2}, LIl/v;->A(ZZ)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move v3, v2

    :goto_2
    if-nez v3, :cond_2

    :cond_a
    iget-object v1, v1, LIb/k;->b:LIb/l;

    invoke-interface {v1}, LIb/l;->B()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :goto_3
    if-eqz v1, :cond_b

    move v2, v4

    :cond_b
    if-nez v2, :cond_e

    :cond_c
    iget-boolean v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->d0:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0}, LP6/Q;->b()Lhf/a;

    move-result-object v1

    sget-object v2, Lhf/a;->x:Lhf/a;

    if-ne v1, v2, :cond_d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "preferred_view_before_trash"

    const/4 v2, 0x4

    invoke-static {p0, v1, v2}, Ln2/l;->E(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lhf/a;->a(I)Lhf/a;

    move-result-object p0

    invoke-virtual {v0, p0}, LP6/Q;->i(Lhf/a;)V

    goto :goto_4

    :cond_d
    invoke-static {p0}, Lcom/samsung/shim/SemCompatBridge;->getOnBackInvokedDispatcher(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/shim/SemCompatBridge;->unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    :cond_e
    :goto_4
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onConfigurationChanged(), newConfig = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, LYd/d;->h(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/appcompat/app/o;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    invoke-virtual {p0}, LP6/Q;->k()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "APP_Activity onCreate"

    invoke-static {v0}, LRf/j;->a(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/samsung/shim/SemCompatBridge;->applyHighRefreshRate(Landroid/app/Activity;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onCreate(), context = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MainActivity"

    invoke-static {v3, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "checkSidePaneSupport, widthDp : "

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    invoke-static {}, Ltf/a;->y()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, LCf/l;->k()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {v1}, LYd/c;->k(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_0

    sput-boolean v5, Lm9/T;->a:Z

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {v1}, LYd/a;->c(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_1

    sput-boolean v5, Lm9/T;->a:Z

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Landroidx/appcompat/app/o;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v7, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    iget v8, v6, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v7, v8

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    div-float/2addr v6, v8

    invoke-static {v7, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v8, 0x443c0000    # 752.0f

    cmpl-float v8, v6, v8

    if-ltz v8, :cond_2

    move v8, v4

    goto :goto_0

    :cond_2
    move v8, v5

    :goto_0
    sput-boolean v8, Lm9/T;->a:Z

    const-string v8, "SidePaneConfig"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", smallestWidthDp : "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", support side pane : "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lm9/T;->a:Z

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    sput-boolean v4, Lm3/a;->a:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v6, LB7/c;

    const/4 v7, 0x3

    invoke-direct {v6, v7}, LB7/c;-><init>(I)V

    const-wide/16 v8, 0xbb8

    invoke-virtual {v0, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "preferences_dark_mode"

    const-string v6, "0"

    const-string v8, "com.android.calendar_preferences"

    invoke-virtual {v1, v8, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    :try_start_1
    invoke-interface {v8, v0, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    const-string v0, "2"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f140522

    goto :goto_3

    :cond_3
    const-string v0, "1"

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f140523

    goto :goto_3

    :cond_4
    const v0, 0x7f140521

    :goto_3
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/o;->setTheme(I)V

    invoke-static {v1}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->Z:Z

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lxd/o;->f(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Lcom/samsung/android/app/calendar/activity/MainActivity;->R()V

    :cond_5
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v1, v0, v2}, LP6/k0;->c(Lcom/samsung/android/app/calendar/activity/MainActivity;Landroid/content/Intent;Landroid/os/Bundle;)Lhf/a;

    move-result-object v6

    sget-object v8, Lhf/a;->s:Lhf/a;

    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v9, 0x2

    const/4 v10, 0x0

    if-eqz v0, :cond_6

    sput-object v10, LA3/z;->b:Landroid/view/View;

    sput-object v10, LA3/z;->c:LW9/a;

    new-instance v0, LP6/h0;

    invoke-direct {v0, v1, v9}, LP6/h0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v11, Ljk/b;

    invoke-direct {v11, v0, v9}, Ljk/b;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lpk/e;->c:LVj/m;

    invoke-virtual {v11, v0}, LVj/n;->h(LVj/m;)Ljk/h;

    move-result-object v0

    invoke-virtual {v0}, LVj/n;->e()Lek/f;

    invoke-static {v1}, Lh9/l;->o0(Landroid/content/Context;)V

    invoke-static {v1}, Lh9/l;->p0(Landroid/content/Context;)V

    :cond_6
    invoke-super/range {p0 .. p1}, LP6/c;->onCreate(Landroid/os/Bundle;)V

    :try_start_2
    iget-boolean v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->Z:Z

    if-eqz v0, :cond_7

    const v0, 0x7f0a09bf

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/slidingpanelayout/widget/e;

    iput-boolean v4, v0, Landroidx/slidingpanelayout/widget/e;->H:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_7
    :try_start_3
    sget-object v0, LP6/m0;->n:LP6/m0;

    iget-boolean v0, v0, LP6/m0;->m:Z

    if-nez v0, :cond_8

    const v0, 0x7f0a03c8

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const v11, 0x800003

    invoke-virtual {v0, v4, v11}, Landroidx/drawerlayout/widget/DrawerLayout;->n(II)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_4

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8
    :goto_4
    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, LP6/h0;

    invoke-direct {v0, v1, v7}, LP6/h0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v8, Ljk/b;

    invoke-direct {v8, v0, v9}, Ljk/b;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lpk/e;->c:LVj/m;

    invoke-virtual {v8, v0}, LVj/n;->h(LVj/m;)Ljk/h;

    move-result-object v0

    invoke-virtual {v0}, LVj/n;->e()Lek/f;

    :cond_9
    const v0, 0x7f060a8e

    invoke-virtual {v1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v8

    new-instance v11, LP9/A0;

    const/16 v12, 0x18

    invoke-direct {v11, v12}, LP9/A0;-><init>(I)V

    const-string v12, "map(...)"

    invoke-static {v11, v8, v12}, LMe/a;->n(LP9/A0;Ljava/util/Optional;Ljava/lang/String;)Ljava/util/Optional;

    move-result-object v8

    new-instance v11, LD9/e;

    invoke-direct {v11, v0, v9}, LD9/e;-><init>(II)V

    new-instance v0, LL9/a;

    const/4 v12, 0x7

    invoke-direct {v0, v11, v12}, LL9/a;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v8, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iput-object v2, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->X:Landroid/os/Bundle;

    new-instance v0, LLa/f;

    new-instance v8, LP6/p0;

    const/16 v11, 0x15

    invoke-direct {v8, v1, v11}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v11, LP6/p0;

    invoke-direct {v11, v1, v5}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v13, LP6/p0;

    invoke-direct {v13, v1, v4}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v14, LP6/p0;

    invoke-direct {v14, v1, v9}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    invoke-direct {v0, v8, v11, v13, v14}, LLa/f;-><init>(LP6/p0;LP6/p0;LP6/p0;LP6/p0;)V

    iput-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->b0:LLa/f;

    new-instance v0, Lh9/f;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v8

    new-instance v11, LA3/s;

    invoke-direct {v11, v1, v7}, LA3/s;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v8, v11}, Lh9/f;-><init>(Landroid/content/Context;LA3/s;)V

    iput-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->c0:Lh9/f;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v8, "extra_need_month_popup"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v4

    goto :goto_5

    :cond_a
    move v0, v5

    :goto_5
    sget-object v8, LP6/m0;->n:LP6/m0;

    iget-boolean v11, v8, LP6/m0;->m:Z

    if-nez v11, :cond_c

    sget-object v11, Lhf/a;->o:Lhf/a;

    invoke-virtual {v11, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v11

    if-nez v11, :cond_c

    if-eqz v0, :cond_b

    goto :goto_6

    :cond_b
    move v0, v5

    goto :goto_7

    :cond_c
    :goto_6
    move v0, v4

    :goto_7
    iput-boolean v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->l0:Z

    if-eqz v2, :cond_d

    const-string v0, "extra_replace_intent_receiver_registered"

    invoke-virtual {v2, v0, v5}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Li8/b;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Li8/b;->a(Landroid/content/Context;)V

    :cond_d
    iget-boolean v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->l0:Z

    if-eqz v0, :cond_e

    const-string v0, "initSynchronously"

    invoke-static {v3, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/calendar/activity/MainActivity;->N(Z)V

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->W(Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/samsung/android/app/calendar/activity/MainActivity;->O()V

    invoke-virtual {v1}, Lcom/samsung/android/app/calendar/activity/MainActivity;->P()V

    iput-boolean v4, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->d0:Z

    iput-boolean v5, v8, LP6/m0;->m:Z

    goto :goto_8

    :cond_e
    const-string v0, "initAsynchronously"

    invoke-static {v3, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v5, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->d0:Z

    new-instance v0, LP6/p0;

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v2, Lik/j;

    invoke-direct {v2, v0, v5}, Lik/j;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lpk/e;->c:LVj/m;

    invoke-virtual {v2, v0}, LVj/d;->u(LVj/m;)Lik/n;

    move-result-object v0

    invoke-static {}, LXj/b;->a()LXj/d;

    move-result-object v2

    invoke-virtual {v0, v2}, LVj/d;->n(LVj/m;)Lik/D;

    move-result-object v0

    new-instance v2, LP6/p0;

    const/16 v8, 0x8

    invoke-direct {v2, v1, v8}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v8, LJ9/p;

    const/16 v11, 0x19

    invoke-direct {v8, v11}, LJ9/p;-><init>(I)V

    new-instance v11, Lek/i;

    sget-object v13, Lck/c;->c:Lck/b;

    invoke-direct {v11, v2, v8, v13}, Lek/i;-><init>(Lak/c;Lak/c;Lak/a;)V

    invoke-virtual {v0, v11}, LVj/d;->b(LVj/h;)V

    iget-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->S:LYj/a;

    invoke-virtual {v0, v11}, LYj/a;->a(LYj/b;)Z

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v0, Lpk/e;->b:LVj/m;

    const-wide/16 v14, 0x2bc

    invoke-static {v14, v15, v0}, LVj/d;->v(JLVj/m;)Lik/W;

    move-result-object v0

    invoke-static {}, LXj/b;->a()LXj/d;

    move-result-object v2

    invoke-virtual {v0, v2}, LVj/d;->n(LVj/m;)Lik/D;

    move-result-object v0

    new-instance v2, LP6/p0;

    const/16 v8, 0x9

    invoke-direct {v2, v1, v8}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v8, LJ9/p;

    const/16 v11, 0x1a

    invoke-direct {v8, v11}, LJ9/p;-><init>(I)V

    new-instance v11, Lek/i;

    invoke-direct {v11, v2, v8, v13}, Lek/i;-><init>(Lak/c;Lak/c;Lak/a;)V

    invoke-virtual {v0, v11}, LVj/d;->b(LVj/h;)V

    iput-object v11, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->T:Lek/i;

    :goto_8
    new-instance v14, LS6/c;

    new-instance v15, LP6/p0;

    invoke-direct {v15, v1, v7}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v0, LP6/p0;

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v7, LP6/p0;

    const/4 v8, 0x5

    invoke-direct {v7, v1, v8}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v11, LP6/p0;

    const/4 v13, 0x6

    invoke-direct {v11, v1, v13}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v13, LP6/p0;

    invoke-direct {v13, v1, v12}, LP6/p0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    move-object/from16 v16, v0

    move-object/from16 v17, v7

    move-object/from16 v18, v11

    move-object/from16 v19, v13

    invoke-direct/range {v14 .. v19}, LS6/c;-><init>(LP6/p0;LP6/p0;LP6/p0;LP6/p0;LP6/p0;)V

    iput-object v14, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->k0:LS6/c;

    iget-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    iget-object v7, v0, LP6/Q;->a:LIb/k;

    if-nez v7, :cond_f

    move v7, v5

    goto :goto_9

    :cond_f
    iget-object v7, v7, LIb/k;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v7

    :goto_9
    if-eqz v7, :cond_10

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    new-instance v11, LF7/f;

    invoke-direct {v11, v2}, LF7/f;-><init>(I)V

    new-instance v2, LP6/o0;

    invoke-direct {v2, v0, v4}, LP6/o0;-><init>(Ljava/lang/Object;I)V

    new-instance v0, LP6/u0;

    invoke-direct {v0, v1, v11, v2}, LP6/u0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;Ljava/util/function/Supplier;Lo1/a;)V

    invoke-virtual {v7, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    goto :goto_a

    :cond_10
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, LF7/f;

    invoke-direct {v2, v8}, LF7/f;-><init>(I)V

    new-instance v7, LP6/o0;

    invoke-direct {v7, v1, v5}, LP6/o0;-><init>(Ljava/lang/Object;I)V

    new-instance v11, LP6/u0;

    invoke-direct {v11, v1, v2, v7}, LP6/u0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;Ljava/util/function/Supplier;Lo1/a;)V

    invoke-virtual {v0, v11}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :goto_a
    invoke-static {}, LGm/d;->b()LGm/d;

    move-result-object v0

    invoke-virtual {v0, v1}, LGm/d;->e(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    invoke-static {}, LGm/d;->b()LGm/d;

    move-result-object v0

    invoke-virtual {v0, v1}, LGm/d;->j(Ljava/lang/Object;)V

    :cond_11
    invoke-virtual {v1, v6}, Lcom/samsung/android/app/calendar/activity/MainActivity;->c0(Lhf/a;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    :try_start_4
    const-string v2, "com.samsung.android.calendar.ACTION_UPDATE_APP_CONTEXT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    iget-object v7, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->v0:LFb/b;

    invoke-static {v2, v7, v0, v9}, Lcom/samsung/shim/SemCompatBridge;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_b

    :catch_4
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "Exception on register intent filter "

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_b
    sget-boolean v0, Lm9/T;->a:Z

    const/4 v2, 0x0

    const v7, 0x7f0a0a5c

    const v9, 0x7f0a0995

    if-nez v0, :cond_12

    :try_start_5
    invoke-virtual {v1, v9}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v1, v7}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const-string v0, "Above sw752dp, but supporting pane is not supported"

    invoke-static {v3, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_10

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_10

    :cond_12
    new-instance v0, Lg9/b;

    invoke-direct {v0}, Lg9/b;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->s0:Lg9/b;

    const v0, 0x7f0a05b1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/calendar/view/TwoPaneLayout;

    invoke-virtual {v1, v7}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v9}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v11

    const v13, 0x7f0a07c8

    invoke-virtual {v1, v13}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v13

    iget-object v14, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->s0:Lg9/b;

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-static {v15}, Lxd/o;->f(Landroid/content/Intent;)Z

    move-result v15

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 p1, v2

    const-string v2, "parentView"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "leftPane"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rightPane"

    invoke-static {v11, v2}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "quickAddBackground"

    invoke-static {v13, v5}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v14, Lg9/b;->q:Lcom/samsung/android/app/calendar/view/TwoPaneLayout;

    iput-object v3, v14, Lg9/b;->n:Landroid/view/View;

    iput-object v11, v14, Lg9/b;->o:Landroid/view/View;

    iput-object v13, v14, Lg9/b;->p:Landroid/view/View;

    iput-object v6, v14, Lg9/b;->B:Lhf/a;

    iput-boolean v15, v14, Lg9/b;->E:Z

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const v11, 0x7f0a09e4

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/calendar/view/sidepane/SplitBarView;

    iput-object v0, v14, Lg9/b;->m:Lcom/samsung/android/app/calendar/view/sidepane/SplitBarView;

    if-eqz v0, :cond_19

    invoke-virtual {v0, v14}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, v14, Lg9/b;->o:Landroid/view/View;

    if-eqz v0, :cond_18

    new-instance v2, LAd/t;

    invoke-direct {v2, v14, v12}, LAd/t;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-static {v5}, Lkotlin/jvm/internal/j;->b(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v2, "getDefault(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    if-ne v0, v4, :cond_13

    move v0, v4

    goto :goto_c

    :cond_13
    const/4 v0, 0x0

    :goto_c
    iput-boolean v0, v14, Lg9/b;->r:Z

    invoke-static {v5}, LYd/c;->m(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, v14, Lg9/b;->D:Z

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, v14, Lg9/b;->A:F

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b00d1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iget v2, v14, Lg9/b;->A:F

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v14, Lg9/b;->z:I

    invoke-static {v6}, Lhf/a;->c(Lhf/a;)Z

    move-result v0

    const-string v2, "key_two_pane_is_closed"

    if-eqz v0, :cond_16

    if-eqz v15, :cond_14

    goto :goto_e

    :cond_14
    invoke-static {v5}, LRf/j;->N(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, LR5/c;->e:Z

    if-eqz v0, :cond_15

    move/from16 v2, p1

    goto :goto_d

    :cond_15
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_d
    sput v2, LR5/c;->f:F

    goto :goto_f

    :cond_16
    :goto_e
    sput-boolean v4, LR5/c;->e:Z

    sput p1, LR5/c;->f:F

    invoke-static {v5, v2, v4}, LRf/j;->z0(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_f
    sget-boolean v0, LR5/c;->e:Z

    iput-boolean v0, v14, Lg9/b;->C:Z

    invoke-virtual {v14, v5, v3}, Lg9/b;->c(Landroid/content/Context;Landroid/view/View;)V

    iget-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->s0:Lg9/b;

    invoke-virtual {v1, v7}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lg9/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "twoPaneStatusListener"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lg9/b;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->s0:Lg9/b;

    invoke-virtual {v1, v9}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lg9/c;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lg9/b;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v1, Lcom/samsung/android/app/calendar/activity/MainActivity;->s0:Lg9/b;

    new-instance v2, LP6/r0;

    invoke-direct {v2, v1, v8}, LP6/r0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v0, Lg9/b;->y:LP6/r0;

    :cond_17
    :goto_10
    invoke-static {}, LRf/j;->f()V

    return-void

    :cond_18
    invoke-static {v2}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v10

    :cond_19
    const-string v0, "splitBar"

    invoke-static {v0}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v10
.end method

.method public onDeleteConfirmClickEvent(Lx9/a;)V
    .locals 1
    .annotation runtime LGm/j;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, LP6/Q;->a:LIb/k;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, LIb/k;->b:LIb/l;

    if-eqz p1, :cond_2

    invoke-interface {p1}, LIb/l;->getCalendarType()Lhf/a;

    move-result-object p1

    sget-object v0, Lhf/a;->x:Lhf/a;

    if-ne p1, v0, :cond_2

    iget-object p0, p0, LIb/k;->b:LIb/l;

    check-cast p0, LXc/c;

    iget-object p0, p0, LXc/c;->b:LXc/d;

    check-cast p0, LQa/s;

    const/4 p1, -0x1

    iput p1, p0, LQa/s;->K:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDestroy(), context = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->o0:Landroidx/appcompat/app/l;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->o0:Landroidx/appcompat/app/l;

    invoke-virtual {v0}, Landroidx/appcompat/app/l;->dismiss()V

    iput-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->o0:Landroidx/appcompat/app/l;

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->v0:LFb/b;

    invoke-virtual {v0, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception on unregister receiver : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Lcom/samsung/android/app/calendarnotification/view/CustomHeadUpService;->c()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/calendarnotification/view/AlertPopupActivity;->D()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/sdk/bixby2/Sbixby;->getStateHandler()Lcom/samsung/android/sdk/bixby2/state/StateHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/bixby2/state/StateHandler;->updateStateChange(Lcom/samsung/android/sdk/bixby2/state/StateHandler$Callback;)V

    :cond_1
    iput-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->u0:LP6/w0;

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    iget-object v3, v0, LP6/Q;->a:LIb/k;

    const/4 v9, 0x0

    if-eqz v3, :cond_2

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5, v4, v5}, LIb/k;->M(JJ)V

    invoke-virtual {v3, v9}, LIb/k;->L(Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-virtual/range {v3 .. v8}, LIb/k;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/b;I)V

    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->i0:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, LP6/Q;->a:LIb/k;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, LIb/k;->E()V

    :cond_3
    iget-object v3, v0, LP6/Q;->a:LIb/k;

    if-eqz v3, :cond_4

    iget-object v3, v3, LIb/k;->e:Ltc/a;

    if-eqz v3, :cond_4

    iput-boolean v9, v3, Ltc/a;->b:Z

    :cond_4
    iget-object v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->S:LYj/a;

    invoke-virtual {v3}, LYj/a;->f()V

    iget-object v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->N:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->f0:Lcom/samsung/android/app/calendar/commonlocationpicker/N;

    if-eqz v3, :cond_6

    iget-object v4, v3, Lcom/samsung/android/app/calendar/commonlocationpicker/N;->n:Ljava/lang/Object;

    check-cast v4, LYj/a;

    if-eqz v4, :cond_5

    invoke-virtual {v4}, LYj/a;->dispose()V

    :cond_5
    iput-object v2, v3, Lcom/samsung/android/app/calendar/commonlocationpicker/N;->n:Ljava/lang/Object;

    iput-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->f0:Lcom/samsung/android/app/calendar/commonlocationpicker/N;

    :cond_6
    iget-object v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->k0:LS6/c;

    if-eqz v3, :cond_a

    iget-object v4, v3, LS6/c;->h:Lek/f;

    if-eqz v4, :cond_7

    invoke-static {v4}, Lbk/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_7
    iget-object v4, v3, LS6/c;->i:Lek/f;

    if-eqz v4, :cond_8

    invoke-static {v4}, Lbk/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_8
    iget-object v4, v3, LS6/c;->j:Lek/f;

    if-eqz v4, :cond_9

    invoke-static {v4}, Lbk/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    :cond_9
    iput-object v2, v3, LS6/c;->a:LP6/p0;

    iput-object v2, v3, LS6/c;->b:LP6/p0;

    iput-object v2, v3, LS6/c;->c:LP6/p0;

    iput-object v2, v3, LS6/c;->d:LP6/p0;

    iput-object v2, v3, LS6/c;->e:LP6/p0;

    iput-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->k0:LS6/c;

    :cond_a
    iget-object v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    if-eqz v3, :cond_b

    iget-object v4, v3, LP6/H0;->d:Ljava/lang/Object;

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/Reference;->clear()V

    iget-object v4, v3, LP6/H0;->h:Ljava/lang/Object;

    check-cast v4, LYj/a;

    invoke-virtual {v4}, LYj/a;->f()V

    iput-object v2, v3, LP6/H0;->e:Ljava/lang/Object;

    iput-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    :cond_b
    iget-boolean v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Y:Z

    invoke-virtual {v0, v3}, LP6/Q;->a(Z)V

    iput-object v2, v0, LP6/Q;->a:LIb/k;

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->O:Lnj/a;

    if-eqz v0, :cond_c

    iget-boolean v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Y:Z

    if-nez v3, :cond_c

    iput-object v2, v0, Lnj/a;->n:Ljava/lang/Object;

    iput-object v2, v0, Lnj/a;->o:Ljava/lang/Object;

    iput-object v2, v0, Lnj/a;->p:Ljava/lang/Object;

    iput-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->O:Lnj/a;

    :cond_c
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->T:Lek/i;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lbk/b;->a(Ljava/util/concurrent/atomic/AtomicReference;)Z

    iput-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->T:Lek/i;

    :cond_d
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->W:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_f

    iget-boolean v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Y:Z

    if-nez v3, :cond_e

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/i0;)V

    :cond_e
    iput-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->W:Landroidx/recyclerview/widget/RecyclerView;

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->U:LYj/b;

    if-eqz v0, :cond_10

    invoke-interface {v0}, LYj/b;->dispose()V

    iput-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->U:LYj/b;

    :cond_10
    iget-object v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->b0:LLa/f;

    iget-boolean v0, v3, LLa/f;->n:Z

    if-eqz v0, :cond_11

    iget-object v0, v3, LLa/f;->p:Ljava/lang/Object;

    check-cast v0, LP6/p0;

    :try_start_1
    iget-object v4, v3, LLa/f;->s:Ljava/lang/Object;

    check-cast v4, LT6/a;

    iget-object v5, v0, LP6/p0;->n:Lcom/samsung/android/app/calendar/activity/MainActivity;

    invoke-virtual {v5, v4}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v4, v3, LLa/f;->t:Ljava/lang/Object;

    check-cast v4, LT6/b;

    iget-object v5, v0, LP6/p0;->n:Lcom/samsung/android/app/calendar/activity/MainActivity;

    invoke-virtual {v5, v4}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v4, v3, LLa/f;->u:Ljava/lang/Object;

    check-cast v4, LT6/b;

    iget-object v0, v0, LP6/p0;->n:Lcom/samsung/android/app/calendar/activity/MainActivity;

    invoke-virtual {v0, v4}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    iput-boolean v9, v3, LLa/f;->n:Z

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    iput-boolean v9, v3, LLa/f;->n:Z

    throw p0

    :cond_11
    :goto_2
    iget-object v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->c0:Lh9/f;

    iget-boolean v0, v3, Lh9/f;->b:Z

    if-eqz v0, :cond_12

    :try_start_3
    iget-object v0, v3, Lh9/f;->d:Landroid/net/ConnectivityManager;

    iget-object v4, v3, Lh9/f;->e:LE4/p;

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    iput-boolean v9, v3, Lh9/f;->b:Z

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :goto_4
    iput-boolean v9, v3, Lh9/f;->b:Z

    throw p0

    :cond_12
    :goto_5
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->R:LP6/J0;

    if-eqz v0, :cond_13

    iput-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->R:LP6/J0;

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v3, LF9/D;->o:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, LF9/D;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "remove, hashCode : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", eventListViewObservers : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "EventListViewObservers"

    invoke-static {v6, v5}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_14

    iput-object v2, v4, LF9/D;->b:Llf/h;

    iput-object v2, v4, LF9/D;->c:Llf/h;

    iput-object v2, v4, LF9/D;->d:Llf/h;

    iput-object v2, v4, LF9/D;->e:Llf/h;

    iput-object v2, v4, LF9/D;->f:Llf/h;

    iput-object v2, v4, LF9/D;->g:Llf/h;

    iput-object v2, v4, LF9/D;->h:Llf/h;

    iput-object v2, v4, LF9/D;->i:Llf/h;

    iput-object v2, v4, LF9/D;->j:Llf/h;

    iput-object v2, v4, LF9/D;->k:Llf/h;

    iput-object v2, v4, LF9/D;->l:Llf/h;

    iput-object v2, v4, LF9/D;->a:Llf/h;

    iput-object v2, v4, LF9/D;->m:Llf/h;

    :cond_14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, LV9/B;->x:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v3, Lhf/b;->n:Lhf/b;

    invoke-static {v0, v3}, LYl/l;->a0(ILhf/b;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Y:Z

    if-nez v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sget-object v3, LRf/q;->b:Ljava/util/HashMap;

    invoke-static {v0}, LRf/j;->q0(I)V

    :cond_15
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lxd/o;->f(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_16
    sput-object v2, LEj/d;->f:Landroid/widget/Toast;

    invoke-static {}, LGm/d;->b()LGm/d;

    move-result-object v0

    invoke-virtual {v0, p0}, LGm/d;->e(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-static {}, LGm/d;->b()LGm/d;

    move-result-object v0

    invoke-virtual {v0, p0}, LGm/d;->l(Ljava/lang/Object;)V

    :cond_17
    sput-boolean v9, Lh9/l;->g:Z

    sget-object v0, Lsh/h;->a:Lsh/c;

    invoke-virtual {v0}, Lsh/c;->b()V

    sput-object v2, LA3/z;->b:Landroid/view/View;

    sput-object v2, LA3/z;->c:LW9/a;

    sget-object v0, Lki/e;->q:Lki/e;

    if-eqz v0, :cond_18

    iget-object v0, v0, Lki/e;->n:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    goto :goto_6

    :cond_18
    move-object v0, v2

    :goto_6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lki/e;->q:Lki/e;

    if-eqz v0, :cond_19

    iput-object v2, v0, Lki/e;->o:Ljava/lang/Object;

    :cond_19
    sput-object v2, Lki/e;->q:Lki/e;

    :cond_1a
    sget-object v0, Li8/b;->a:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Li8/b;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->s0:Lg9/b;

    if-eqz v0, :cond_1b

    iget-object v0, v0, Lg9/b;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1b
    invoke-static {p0}, Lcom/samsung/shim/SemCompatBridge;->getOnBackInvokedDispatcher(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/shim/SemCompatBridge;->unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-super {p0}, LP6/c;->onDestroy()V

    return-void
.end method

.method public onDetailUpdated(LP6/e0;)V
    .locals 3
    .annotation runtime LGm/j;
    .end annotation

    iget-boolean p1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->n0:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, LP6/Q;->e()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->n0:Z

    :cond_1
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, LP6/r0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, LP6/r0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onGoogleSyncInvokeEvent(Luh/a;)V
    .locals 2
    .annotation runtime LGm/j;
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    iget-object v0, p0, LP6/H0;->f:Ljava/lang/Object;

    check-cast v0, LIb/k;

    iget-object v1, p0, LP6/H0;->m:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iput-object p1, p0, LP6/H0;->m:Ljava/lang/Object;

    iget-object p1, v0, LIb/k;->p:LFh/a;

    invoke-virtual {p1}, LFh/a;->n()I

    move-result p1

    iget-object v0, v0, LIb/k;->o:Le9/a;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    goto :goto_0

    :cond_2
    invoke-static {}, LFh/a;->A()LFh/a;

    move-result-object v0

    invoke-virtual {v0}, LFh/a;->n()I

    move-result v0

    :goto_0
    sub-int/2addr v0, p1

    const/16 p1, 0x16d

    if-lt v0, p1, :cond_3

    invoke-virtual {p0}, LP6/H0;->e()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, LP6/H0;->d()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->t0:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    if-eqz v0, :cond_1d

    invoke-virtual {v2}, LP6/Q;->b()Lhf/a;

    move-result-object v0

    invoke-virtual {v2}, LP6/Q;->c()Z

    move-result v3

    sget-object v4, Lhf/a;->x:Lhf/a;

    const/4 v5, 0x0

    const/16 v6, 0x1d

    if-eq p1, v6, :cond_17

    const/16 v1, 0x20

    if-eq p1, v1, :cond_14

    const/16 v1, 0x33

    if-eq p1, v1, :cond_13

    const/16 v1, 0x6f

    if-eq p1, v1, :cond_10

    const/16 v1, 0x22

    if-eq p1, v1, :cond_d

    const/16 v1, 0x23

    if-eq p1, v1, :cond_c

    const/16 v1, 0x29

    if-eq p1, v1, :cond_b

    const/16 v1, 0x2a

    sget-object v6, Lhf/a;->t:Lhf/a;

    if-eq p1, v1, :cond_9

    const/16 v1, 0x2f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x30

    if-eq p1, v1, :cond_6

    const/16 v1, 0x35

    if-eq p1, v1, :cond_3

    const/16 v0, 0x36

    if-eq p1, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v3, :cond_16

    iget-object p0, v2, LP6/Q;->a:LIb/k;

    if-eqz p0, :cond_16

    iget-object p0, p0, LIb/k;->b:LIb/l;

    if-nez p0, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-interface {p0}, LIb/l;->J()V

    return v5

    :cond_3
    if-eqz v3, :cond_5

    iget-object p0, v2, LP6/Q;->a:LIb/k;

    if-eqz p0, :cond_16

    iget-object p0, p0, LIb/k;->b:LIb/l;

    if-nez p0, :cond_4

    goto/16 :goto_1

    :cond_4
    invoke-interface {p0}, LIb/l;->e()V

    return v5

    :cond_5
    invoke-static {v0, v6}, Lf9/a;->a(Lhf/a;Lhf/a;)V

    invoke-virtual {v2, v6}, LP6/Q;->i(Lhf/a;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->J()V

    return v5

    :cond_6
    if-nez v3, :cond_1c

    iget-object v0, v2, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, LIb/k;->C()V

    goto/16 :goto_2

    :cond_7
    iget-object v0, v2, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_1c

    iget-object v0, v0, LIb/k;->b:LIb/l;

    if-nez v0, :cond_8

    goto/16 :goto_2

    :cond_8
    invoke-interface {v0}, LIb/l;->b()V

    goto/16 :goto_2

    :cond_9
    if-eq v0, v6, :cond_1c

    if-eq v0, v4, :cond_1c

    if-nez v3, :cond_1c

    invoke-static {p0}, Lxh/q;->z(Landroid/content/Context;)LGb/b;

    move-result-object v0

    iget-object v1, v2, LP6/Q;->a:LIb/k;

    if-eqz v1, :cond_1c

    iget-object v2, v1, LIb/k;->f:Lp7/f;

    if-eqz v2, :cond_1c

    iget-object v2, v1, LIb/k;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_a

    goto/16 :goto_2

    :cond_a
    iget-object v1, v1, LIb/k;->f:Lp7/f;

    iget-object v1, v1, Lp7/f;->o:Ljava/lang/Object;

    check-cast v1, LP6/k;

    invoke-virtual {v1, v0}, LP6/k;->a(LGb/b;)V

    goto/16 :goto_2

    :cond_b
    if-nez v3, :cond_16

    sget-object p1, Lhf/a;->s:Lhf/a;

    invoke-static {v0, p1}, Lf9/a;->a(Lhf/a;Lhf/a;)V

    invoke-virtual {v2, p1}, LP6/Q;->i(Lhf/a;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->J()V

    return v5

    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result p1

    if-eqz p1, :cond_16

    new-instance p1, LIb/n;

    const p2, 0x7f0d08c6

    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    const p2, 0x7f0a005d

    invoke-virtual {p0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-direct {p1, p0}, LIb/n;-><init>(Ljava/lang/Object;)V

    iget-object p0, v2, LP6/Q;->a:LIb/k;

    if-eqz p0, :cond_16

    invoke-virtual {p0, p1}, LIb/k;->A(LIb/n;)V

    return v5

    :cond_d
    iget-object v1, v2, LP6/Q;->a:LIb/k;

    if-eqz v1, :cond_e

    iget-object v1, v1, LIb/k;->s:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    :cond_e
    if-nez v5, :cond_1c

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    if-eqz v1, :cond_1c

    if-nez v3, :cond_1c

    if-eq v0, v4, :cond_1c

    iget-object v0, v2, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_f

    iget-object v0, v0, LIb/k;->p:LFh/a;

    goto :goto_0

    :cond_f
    invoke-static {}, LFh/a;->A()LFh/a;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, LP6/i;->e(Lmf/e;)V

    goto/16 :goto_2

    :cond_10
    iget-object v0, v2, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_1c

    iget-object v1, v0, LIb/k;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, v5}, LIb/k;->o(Z)V

    goto/16 :goto_2

    :cond_11
    invoke-virtual {v0}, LIb/k;->e()V

    iget-object v1, v0, LIb/k;->b:LIb/l;

    if-eqz v1, :cond_12

    invoke-interface {v1}, LIb/l;->C()V

    :cond_12
    iget-object v1, v0, LIb/k;->d:Lsc/c;

    if-eqz v1, :cond_1c

    iget-object v1, v1, Lsc/c;->c:LIl/v;

    invoke-virtual {v1}, LIl/v;->d0()V

    iget-object v0, v0, LIb/k;->d:Lsc/c;

    iget-object v0, v0, Lsc/c;->c:LIl/v;

    invoke-virtual {v0}, LIl/v;->D()V

    goto/16 :goto_2

    :cond_13
    if-nez v3, :cond_16

    sget-object p1, Lhf/a;->r:Lhf/a;

    invoke-static {v0, p1}, Lf9/a;->a(Lhf/a;Lhf/a;)V

    invoke-virtual {v2, p1}, LP6/Q;->i(Lhf/a;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->J()V

    return v5

    :cond_14
    if-nez v3, :cond_16

    sget-object p1, Lhf/a;->p:Lhf/a;

    invoke-static {v0, p1}, Lf9/a;->a(Lhf/a;Lhf/a;)V

    invoke-static {p0}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_15

    invoke-static {}, Ltf/a;->A()Z

    move-result p2

    if-nez p2, :cond_15

    sget-boolean p2, Lm9/T;->a:Z

    if-nez p2, :cond_15

    sget-object p1, Lhf/a;->q:Lhf/a;

    :cond_15
    invoke-virtual {v2, p1}, LP6/Q;->i(Lhf/a;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->J()V

    :cond_16
    :goto_1
    return v5

    :cond_17
    iget-object v0, v2, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_1c

    iget-object v2, v0, LIb/k;->b:LIb/l;

    if-nez v2, :cond_18

    goto :goto_2

    :cond_18
    invoke-interface {v2}, LIb/l;->getCalendarType()Lhf/a;

    move-result-object v2

    if-ne v2, v4, :cond_1b

    iget-object v0, v0, LIb/k;->b:LIb/l;

    check-cast v0, LXc/c;

    iget-object v0, v0, LXc/c;->b:LXc/d;

    check-cast v0, LQa/s;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, LRf/p;->c(I)Z

    move-result v2

    if-eqz v2, :cond_19

    iput-boolean v5, v0, LQa/s;->q:Z

    :cond_19
    if-ne p1, v6, :cond_1c

    iget-object v0, v0, LQa/s;->v:LQa/d;

    if-eqz v0, :cond_1c

    iget-object v2, v0, LQa/d;->q:Landroidx/appcompat/widget/AppCompatCheckBox;

    if-eqz v2, :cond_1c

    iget-object v3, v0, LQa/d;->y:LQa/s;

    if-nez v3, :cond_1a

    goto :goto_2

    :cond_1a
    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v2

    iget-object v0, v0, LQa/d;->y:LQa/s;

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, LQa/s;->f(Z)V

    goto :goto_2

    :cond_1b
    iget-object v1, v0, LIb/k;->b:LIb/l;

    invoke-interface {v1}, LIb/l;->getCalendarType()Lhf/a;

    move-result-object v1

    sget-object v2, Lhf/a;->w:Lhf/a;

    if-ne v1, v2, :cond_1c

    iget-object v0, v0, LIb/k;->b:LIb/l;

    check-cast v0, Lnc/i;

    iget-object v0, v0, Lnc/i;->c:Lnc/j;

    check-cast v0, Lm9/K;

    iget-object v0, v0, Lm9/K;->F:Lm9/d;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lm9/d;->b()V

    :cond_1c
    :goto_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0

    :cond_1d
    const/16 v0, 0x17

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_1e

    const/16 v0, 0x42

    if-eq p1, v0, :cond_1e

    const/16 v0, 0xa0

    if-eq p1, v0, :cond_1e

    goto :goto_3

    :cond_1e
    iget-object v0, v2, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_20

    iget-object v0, v0, LIb/k;->b:LIb/l;

    if-nez v0, :cond_1f

    goto :goto_3

    :cond_1f
    invoke-interface {v0, v1}, LIb/l;->k(Z)V

    :cond_20
    :goto_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    invoke-virtual {v0}, LP6/Q;->b()Lhf/a;

    move-result-object v1

    invoke-virtual {v0}, LP6/Q;->c()Z

    move-result v2

    const/16 v3, 0x17

    if-eq p1, v3, :cond_3

    const/16 v3, 0x3e

    if-eq p1, v3, :cond_3

    const/16 v3, 0x42

    if-eq p1, v3, :cond_3

    const/16 v3, 0x54

    if-eq p1, v3, :cond_0

    const/16 v1, 0xa0

    if-eq p1, v1, :cond_3

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->P:LP6/i;

    if-eqz p0, :cond_2

    if-nez v2, :cond_2

    sget-object p1, Lhf/a;->x:Lhf/a;

    if-eq v1, p1, :cond_2

    iget-object p1, v0, LP6/Q;->a:LIb/k;

    if-eqz p1, :cond_1

    iget-object p1, p1, LIb/k;->p:LFh/a;

    goto :goto_0

    :cond_1
    invoke-static {}, LFh/a;->A()LFh/a;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, LP6/i;->e(Lmf/e;)V

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    iget-object v0, v0, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_5

    iget-object v0, v0, LIb/k;->b:LIb/l;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    invoke-interface {v0, v1}, LIb/l;->k(Z)V

    :cond_5
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1, p2}, Ld/j;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V

    const-string p2, "MainActivity"

    if-nez p1, :cond_6

    invoke-static {p0}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    const p1, 0x7f0a05ab

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/calendar/view/common/MainFrameContainerView;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/calendar/view/common/MainFrameContainerView;->setRequestToForceLayout(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to request to relayout MainFrameContainerView, "

    invoke-static {p1, v1, p2}, LMe/a;->q(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    :try_start_1
    const-string v1, "update SlidingPaneLayout when multi window mode is changed to full mode"

    invoke-static {p2, v1}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f0a09bf

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/o;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/slidingpanelayout/widget/e;

    invoke-virtual {v1}, Landroidx/slidingpanelayout/widget/e;->g()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :goto_1
    invoke-virtual {v1, v0}, Landroidx/slidingpanelayout/widget/e;->l(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v1, "Couldn\'t update SlidingPaneLayout on onMultiWindowModeChanged(), "

    invoke-static {v0, v1, p2}, LMe/a;->q(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object p2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, LP6/Q;->b()Lhf/a;

    move-result-object v0

    sget-object v1, Lhf/a;->s:Lhf/a;

    if-eq v0, v1, :cond_2

    goto :goto_4

    :cond_2
    sget-object v0, LEc/c;->n:LEc/c;

    iget-object v1, v0, LEc/c;->m:LEc/b;

    const/4 v2, 0x0

    iput-boolean v2, v1, LEc/b;->r:Z

    iput-object v1, v0, LEc/c;->m:LEc/b;

    iget-object v0, p2, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, LIb/k;->v(I)V

    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lxd/o;->g(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p2}, LP6/Q;->c()Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    const/4 p1, 0x3

    :goto_3
    iget-object p0, p2, LP6/Q;->a:LIb/k;

    if-eqz p0, :cond_5

    invoke-virtual {p0, p1}, LIb/k;->v(I)V

    :cond_5
    invoke-virtual {p2}, LP6/Q;->e()V

    :cond_6
    :goto_4
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 4

    invoke-super {p0, p1}, Ld/j;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    const-string v0, "onNewIntent"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "ses_finder"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MainActivity"

    const-string v2, "onNewIntent - isSesFinder."

    invoke-static {v0, v2}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/calendar/activity/MainActivity;->I(Z)V

    :cond_0
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    if-nez v0, :cond_1

    iget-object v0, v1, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_1

    iget-object v0, v0, LIb/k;->b:LIb/l;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v2, LDb/r;

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, LDb/r;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_1
    invoke-static {p0, p1}, LP6/k0;->b(Lcom/samsung/android/app/calendar/activity/MainActivity;Landroid/content/Intent;)J

    move-result-wide v2

    iget-object v0, v1, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2, v3}, LIb/k;->n(J)V

    :cond_2
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, LP6/k0;->c(Lcom/samsung/android/app/calendar/activity/MainActivity;Landroid/content/Intent;Landroid/os/Bundle;)Lhf/a;

    move-result-object v0

    const-string v2, "calendar_view_type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lhf/a;->s:Lhf/a;

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "extra_need_month_popup"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v1, v0}, LP6/Q;->i(Lhf/a;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/calendar/activity/MainActivity;->W(Landroid/content/Intent;)V

    return-void
.end method

.method public onPanelSlide(LE9/b;)V
    .locals 9
    .annotation runtime LGm/j;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->s0:Lg9/b;

    if-eqz p0, :cond_19

    iget-object v0, p0, Lg9/b;->x:Ljava/util/ArrayList;

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/j;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, LE9/b;->a:I

    iget-object v1, p0, Lg9/b;->n:Landroid/view/View;

    const/4 v2, 0x0

    const-string v3, "leftPane"

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    sget-boolean v1, LR5/c;->e:Z

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    iget-object v1, p0, Lg9/b;->t:Landroid/animation/ValueAnimator;

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    if-eqz v1, :cond_3

    iget-object v1, p0, Lg9/b;->t:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/4 v1, 0x1

    if-eqz p1, :cond_5

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    move v5, v4

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v1

    :goto_2
    const/high16 v6, 0x3f800000    # 1.0f

    const-string v7, "container"

    const/4 v8, 0x0

    if-eqz v5, :cond_c

    iget-boolean v5, p0, Lg9/b;->v:Z

    if-eqz v5, :cond_c

    iget-object v5, p0, Lg9/b;->n:Landroid/view/View;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v5, p0, Lg9/b;->q:Lcom/samsung/android/app/calendar/view/TwoPaneLayout;

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v5, 0x3f666666    # 0.9f

    mul-float/2addr v2, v5

    cmpl-float v2, v3, v2

    if-lez v2, :cond_6

    move v2, v1

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_3
    sput-boolean v2, LR5/c;->e:Z

    if-eqz v2, :cond_7

    move v6, v8

    :cond_7
    sput v6, LR5/c;->f:F

    sput-boolean v4, LR5/c;->d:Z

    iput-boolean v4, p0, Lg9/b;->v:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg9/c;

    invoke-interface {v2}, Lg9/c;->a()V

    goto :goto_4

    :cond_8
    if-nez p1, :cond_9

    move v4, v1

    :cond_9
    invoke-virtual {p0, v4}, Lg9/b;->e(Z)V

    return-void

    :cond_a
    invoke-static {v7}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v2

    :cond_b
    invoke-static {v3}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v2

    :cond_c
    const/4 v4, 0x2

    if-ne p1, v4, :cond_19

    sget p1, Lh9/l;->m:F

    cmpg-float v4, p1, v8

    if-nez v4, :cond_d

    goto/16 :goto_6

    :cond_d
    cmpg-float v4, p1, v6

    if-nez v4, :cond_e

    goto/16 :goto_6

    :cond_e
    iget-boolean v4, p0, Lg9/b;->v:Z

    const-string v5, "splitBar"

    if-nez v4, :cond_14

    invoke-virtual {p0}, Lg9/b;->g()V

    iput-boolean v1, p0, Lg9/b;->v:Z

    sput-boolean v1, LR5/c;->d:Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg9/c;

    invoke-interface {v0}, Lg9/c;->b()V

    goto :goto_5

    :cond_f
    iget-object p1, p0, Lg9/b;->o:Landroid/view/View;

    const-string v0, "rightPane"

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    iget-object v1, p0, Lg9/b;->m:Lcom/samsung/android/app/calendar/view/sidepane/SplitBarView;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p1

    iput v1, p0, Lg9/b;->w:I

    iget-object p1, p0, Lg9/b;->n:Landroid/view/View;

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-static {p1, v8, v1}, Lg9/b;->h(Landroid/view/View;FI)V

    iget-object p0, p0, Lg9/b;->o:Landroid/view/View;

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-static {p0, v8, p1}, Lg9/b;->h(Landroid/view/View;FI)V

    return-void

    :cond_10
    invoke-static {v0}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v2

    :cond_11
    invoke-static {v3}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v2

    :cond_12
    invoke-static {v5}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v2

    :cond_13
    invoke-static {v0}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v2

    :cond_14
    int-to-float v0, v1

    sub-float/2addr v0, p1

    sput v0, LR5/c;->f:F

    iget p1, p0, Lg9/b;->w:I

    int-to-float p1, p1

    mul-float/2addr v0, p1

    float-to-int p1, v0

    iget-object v0, p0, Lg9/b;->q:Lcom/samsung/android/app/calendar/view/TwoPaneLayout;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr v0, p1

    iget-object p1, p0, Lg9/b;->m:Lcom/samsung/android/app/calendar/view/sidepane/SplitBarView;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    sget v1, Lh9/l;->m:F

    mul-float/2addr p1, v1

    float-to-int p1, p1

    sub-int/2addr v0, p1

    iget-object p0, p0, Lg9/b;->n:Landroid/view/View;

    if-eqz p0, :cond_15

    invoke-static {p0, v8, v0}, Lg9/b;->h(Landroid/view/View;FI)V

    return-void

    :cond_15
    invoke-static {v3}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v2

    :cond_16
    invoke-static {v5}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v2

    :cond_17
    invoke-static {v7}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v2

    :cond_18
    invoke-static {v3}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v2

    :cond_19
    :goto_6
    return-void
.end method

.method public final onPause()V
    .locals 5

    const-string v0, "onPause"

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    sput-boolean v0, Lm3/a;->a:Z

    sget-boolean v2, Lm3/a;->b:Z

    if-eqz v2, :cond_0

    const-string v2, "onPause, send ACTION_CALENDAR_PROVIDER_CHANGED"

    invoke-static {v1, v2}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v0, Lm3/a;->b:Z

    const-string v1, "com.samsung.android.calendar.ACTION_CALENDAR_PROVIDER_CHANGED"

    invoke-static {p0, v1}, LP6/H0;->k(Landroid/app/Activity;Ljava/lang/String;)V

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->d0:Z

    iget-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    if-eqz v1, :cond_2

    invoke-virtual {v2}, LP6/Q;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2}, LP6/Q;->b()Lhf/a;

    move-result-object v3

    sget-object v4, Lhf/a;->x:Lhf/a;

    if-ne v3, v4, :cond_1

    const-string v3, "preferred_view_before_trash"

    const/4 v4, 0x4

    invoke-static {v1, v3, v4}, Ln2/l;->E(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Lhf/a;->a(I)Lhf/a;

    move-result-object v3

    :cond_1
    const-string v4, "preferred_startView"

    iget v3, v3, Lhf/a;->m:I

    invoke-static {v1, v4, v3}, Ln2/l;->K(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, LAh/e;->c(Landroid/content/Context;)LAh/e;

    move-result-object v1

    iget-object v4, v1, LAh/e;->g:LYj/a;

    invoke-virtual {v4}, LYj/a;->f()V

    iput-boolean v3, v1, LAh/e;->e:Z

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "extra_set_view_type_to_month"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    sput-boolean v3, Lwg/a;->c:Z

    invoke-super {p0}, LP6/c;->onPause()V

    iget-boolean v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->g0:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->d0:Z

    if-eqz v1, :cond_4

    iget-object v1, v2, LP6/Q;->a:LIb/k;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, LIb/k;->E()V

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->h0:Z

    if-eqz v1, :cond_6

    invoke-virtual {v2}, LP6/Q;->b()Lhf/a;

    move-result-object v1

    sget-object v3, Lhf/a;->u:Lhf/a;

    if-ne v1, v3, :cond_6

    iget-object v1, v2, LP6/Q;->a:LIb/k;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, LIb/k;->E()V

    :cond_5
    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->h0:Z

    :cond_6
    iget-boolean v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->g0:Z

    iput-boolean v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->i0:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->g0:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->j0:Z

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->k0:LS6/c;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_7

    const-string v1, "ProviderObservers"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, LS6/c;->m:LS6/b;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, LS6/c;->n:LS6/b;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v0, LS6/c;->o:LS6/b;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget-object v2, v0, LS6/c;->p:LS6/b;

    invoke-virtual {p0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string p0, "Unregister observers on pause"

    invoke-static {v1, p0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v2, "Exception on unregister unregisterProviderObservers : "

    invoke-static {v2, p0, v1}, LMe/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_0
    const/4 p0, 0x0

    iput-object p0, v0, LS6/c;->f:Landroid/content/Context;

    :cond_8
    return-void
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f130b59

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x30

    const/16 v4, 0x1000

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    invoke-virtual {v1}, LP6/Q;->b()Lhf/a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x5d

    const/16 v5, 0x5c

    const/4 v6, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f13002f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f130031

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f130611

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f13086a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f13060f

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f130868

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v3, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f130041

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2a

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/view/KeyboardShortcutInfo;

    const v2, 0x7f130948

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-direct {v1, v2, v3, v4}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    const v2, 0x7f1300c6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public onQuickAddLifeCycleChanged(LP6/Q0;)V
    .locals 2
    .annotation runtime LGm/j;
    .end annotation

    iget-boolean p1, p1, LP6/Q0;->a:Z

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    iget-object p0, p0, LP6/Q;->a:LIb/k;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, LIb/k;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, LIb/k;->b:LIb/l;

    if-eqz p0, :cond_4

    invoke-interface {p0, p1}, LIb/l;->H(Z)V

    return-void

    :cond_0
    iget-object v0, p0, LIb/k;->i:LGc/a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, v0, LGc/a;->a:LZ9/j;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, LZ9/j;->f()V

    goto :goto_0

    :cond_1
    iget-object v0, v0, LGc/a;->a:LZ9/j;

    if-eqz v0, :cond_2

    iget-object v0, v0, LZ9/j;->f:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v1, v0}, LRf/p;->g(ILandroid/view/View;)V

    :cond_2
    :goto_0
    iget-object p0, p0, LIb/k;->f:Lp7/f;

    if-eqz p0, :cond_4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lp7/f;->u()V

    return-void

    :cond_3
    iget-object p0, p0, Lp7/f;->n:Ljava/lang/Object;

    check-cast p0, Lo9/b;

    if-eqz p0, :cond_4

    iget-object p0, p0, Lo9/b;->o:Lcom/samsung/android/libcalendar/platform/winset/CalendarFloatingActionButton;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method public onQuickAddSavedEvent(LP6/P0;)V
    .locals 11
    .annotation runtime LGm/j;
    .end annotation

    iget-object v0, p1, LP6/P0;->d:Lcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p1, LP6/P0;->e:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    iget-boolean v4, v0, Lcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;->s:Z

    if-nez v4, :cond_0

    invoke-static {v0, v1, v3}, Lh9/l;->u0(Lcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;Landroid/content/Context;Z)V

    invoke-static {v1, v0}, LCf/d;->b(Landroid/content/Context;Lcom/samsung/android/libcalendar/common/data/calendar/CalendarChild;)Ljava/lang/String;

    move-result-object p1

    const v4, 0x7f13089c

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    xor-int/2addr v2, v3

    new-instance v3, LP6/t0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v0, v1, v4}, LP6/t0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {p0, p1, v2, v3}, Lcom/samsung/android/app/calendar/activity/MainActivity;->Z(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz v2, :cond_8

    iget-object v4, p1, LP6/P0;->g:Ljava/lang/String;

    if-eqz v1, :cond_7

    if-nez v4, :cond_1

    goto :goto_4

    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, LEg/j;->b:Landroid/net/Uri;

    const-string v7, "space_id"

    const-string v8, "visible"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v5, v6, v9, v10, v10}, Lcom/samsung/shim/SemCalendarBridge;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_5

    :try_start_0
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_2

    goto :goto_3

    :cond_2
    move v6, v0

    :cond_3
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_4

    const-string v9, ""

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v6, v3, :cond_2

    move v6, v3

    goto :goto_0

    :goto_2
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v5, p0}, Lcom/bumptech/glide/c;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_5
    :goto_3
    move v6, v0

    :cond_6
    invoke-static {v5, v10}, Lcom/bumptech/glide/c;->t(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v4, "Reminder"

    invoke-static {v1, v4, v4}, Lh9/l;->c0(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v6, :cond_7

    if-eqz v4, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    iget-object p1, p1, LP6/P0;->g:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->O:Lnj/a;

    invoke-virtual {v0, p1, v3}, Lnj/a;->F(Ljava/lang/String;Z)V

    const v0, 0x7f13089e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    xor-int/lit8 v1, v2, 0x1

    new-instance v2, LB6/q;

    const/16 v3, 0xc

    invoke-direct {v2, v3, p0, p1}, LB6/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/calendar/activity/MainActivity;->Z(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    return-void

    :cond_8
    :goto_5
    invoke-static {v1}, LCf/d;->l(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, LFh/a;->A()LFh/a;

    move-result-object v4

    invoke-virtual {v4}, LFh/a;->n()I

    move-result v4

    invoke-static {}, LFh/a;->A()LFh/a;

    move-result-object v5

    iget-wide v6, p1, LP6/P0;->b:J

    invoke-virtual {v5, v6, v7}, LFh/a;->F(J)V

    invoke-virtual {v5}, LFh/a;->n()I

    move-result p1

    if-ge p1, v4, :cond_a

    const-string p1, "preferences_hide_past_events"

    invoke-static {v1, p1, v0}, LRf/j;->z0(Landroid/content/Context;Ljava/lang/String;Z)V

    iget-object p1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, LIb/i;

    const/16 v4, 0x14

    invoke-direct {v0, v4}, LIb/i;-><init>(I)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-eqz v2, :cond_9

    const p1, 0x7f13089b

    goto :goto_6

    :cond_9
    const p1, 0x7f13087c

    :goto_6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    xor-int/lit8 v0, v2, 0x1

    new-instance v2, LB6/q;

    const/16 v3, 0xd

    invoke-direct {v2, v3, p0, v1}, LB6/q;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, v2}, Lcom/samsung/android/app/calendar/activity/MainActivity;->Z(Ljava/lang/String;ZLandroid/view/View$OnClickListener;)V

    :cond_a
    return-void
.end method

.method public onQuickAddTextChangeEvent(LP6/R0;)V
    .locals 6
    .annotation runtime LGm/j;
    .end annotation

    iget-object v1, p1, LP6/R0;->a:Ljava/lang/String;

    iget-object v2, p1, LP6/R0;->b:Ljava/lang/String;

    iget-object v3, p1, LP6/R0;->c:Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    iget-object p0, p0, LP6/Q;->a:LIb/k;

    if-eqz p0, :cond_1

    iget-object v0, p0, LIb/k;->i:LGc/a;

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, LGc/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/b;I)V

    :cond_0
    iget-object p0, p0, LIb/k;->b:LIb/l;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1, v2}, LIb/l;->o(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "quick_add_date_time_type"

    const-string v1, "quick_add_extracted_text"

    const-string v2, "quick_add_date_text"

    const-string v3, "quick_add_text"

    :try_start_0
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, ""

    if-eqz v4, :cond_0

    :try_start_1
    invoke-virtual {p1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v5

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string v1, "quick_add_period"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lmf/b;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    iget-object v0, p0, LP6/Q;->a:LIb/k;

    if-nez v0, :cond_4

    return-void

    :cond_4
    move-object v1, v3

    move-object v3, v5

    move v5, p1

    invoke-virtual/range {v0 .. v5}, LIb/k;->K(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/b;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    const-string p1, "MainActivity"

    const-string v0, "Failed to update quick add input period when recreating, "

    invoke-static {p0, v0, p1}, LMe/a;->q(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .locals 5

    const-string v0, "MainActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "APP_Activity onResume"

    invoke-static {v0}, LRf/j;->a(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/samsung/shim/SemCompatBridge;->applyHighRefreshRate(Landroid/app/Activity;)V

    const-string v0, "com.android.calendar_preferences"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sget-object v2, Lkh/a;->c:[Ljava/lang/String;

    invoke-static {p0, v2}, LYl/l;->K(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v2

    const-string v3, "preference_is_calendar_permission_granted"

    invoke-interface {v0, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v1, v2, :cond_1

    :cond_0
    const-string v1, "com.samsung.android.calendar.ACTION_PERMISSION_STATUS_CHANGED"

    invoke-static {p0, v1}, LP6/H0;->k(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    invoke-super {p0}, LP6/c;->onResume()V

    invoke-static {}, LRf/j;->f()V

    return-void
.end method

.method public onSALoggingRequested(LP6/U0;)V
    .locals 2
    .annotation runtime LGm/j;
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/calendar/activity/MainActivity;->B()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, LP6/U0;->b:Ljava/lang/String;

    iget-object v1, p1, LP6/U0;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p1, LP6/U0;->b:Ljava/lang/String;

    invoke-static {p0, v1, p1}, LRf/j;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-static {p0, v1}, LRf/j;->c0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10

    invoke-super {p0, p1}, Ld/j;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->R:LP6/J0;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    iget-object v1, v0, LP6/Q;->a:LIb/k;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, LIb/k;->i()Ljava/util/Optional;

    move-result-object v1

    :goto_0
    new-instance v2, LB9/t;

    const/4 v3, 0x7

    invoke-direct {v2, v3, p1}, LB9/t;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, LP6/Q;->a:LIb/k;

    if-nez v1, :cond_2

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, v1, LIb/k;->i:LGc/a;

    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    goto :goto_2

    :cond_3
    iget-object v1, v1, LGc/a;->a:LZ9/j;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_1

    :cond_4
    iget v1, v1, LZ9/j;->z:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    :goto_2
    new-instance v2, LB9/t;

    const/16 v3, 0x8

    invoke-direct {v2, v3, p1}, LB9/t;-><init>(ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v1, v0, LP6/Q;->a:LIb/k;

    const/4 v2, 0x0

    const-string v3, ""

    if-nez v1, :cond_5

    :goto_3
    move-object v1, v3

    goto :goto_4

    :cond_5
    iget-object v1, v1, LIb/k;->i:LGc/a;

    if-eqz v1, :cond_6

    iget-object v1, v1, LGc/a;->a:LZ9/j;

    if-eqz v1, :cond_6

    iget-object v1, v1, LZ9/j;->w:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_3

    :cond_6
    move-object v1, v2

    :cond_7
    :goto_4
    const-string v4, "quick_add_text"

    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, LP6/Q;->a:LIb/k;

    if-nez v1, :cond_9

    :cond_8
    :goto_5
    move-object v1, v3

    goto :goto_6

    :cond_9
    iget-object v1, v1, LIb/k;->i:LGc/a;

    if-eqz v1, :cond_8

    iget-object v1, v1, LGc/a;->a:LZ9/j;

    if-nez v1, :cond_a

    goto :goto_5

    :cond_a
    iget-object v1, v1, LZ9/j;->x:Ljava/lang/String;

    :goto_6
    const-string v4, "quick_add_date_text"

    invoke-virtual {p1, v4, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, LP6/Q;->a:LIb/k;

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    invoke-virtual {v1}, LIb/k;->j()Ljava/lang/String;

    move-result-object v3

    :goto_7
    const-string v1, "quick_add_extracted_text"

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, LP6/Q;->b()Lhf/a;

    move-result-object v1

    iget v1, v1, Lhf/a;->m:I

    const-string v3, "extra_saved_calendar_type"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Li8/b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    const-string v3, "extra_replace_intent_receiver_registered"

    invoke-virtual {p1, v3, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0}, LYd/c;->k(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_c

    const-string v1, "is_from_dex"

    invoke-virtual {p1, v1, v3}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_c
    invoke-static {p0}, Ltf/a;->x(Landroid/content/Context;)Z

    move-result p1

    iget-boolean v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Z:Z

    if-eq p1, v1, :cond_d

    move-object v9, v2

    goto :goto_8

    :cond_d
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    move-object v9, p1

    :goto_8
    new-instance v4, LA2/b;

    iget-object v5, v0, LP6/Q;->a:LIb/k;

    iget-object p1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->W:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/x0;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->W:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/x0;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/x0;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    :cond_e
    move-object v6, v2

    iget-object v7, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->O:Lnj/a;

    iget-object v8, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Q:LP6/H0;

    invoke-direct/range {v4 .. v9}, LA2/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->R:LP6/J0;

    iput-object v4, p1, LP6/J0;->m:LA2/b;

    iput-boolean v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->Y:Z

    sget-object p0, LP6/m0;->n:LP6/m0;

    iput-boolean v3, p0, LP6/m0;->m:Z

    return-void
.end method

.method public onSearchSettingChange(Lm9/F0;)V
    .locals 0
    .annotation runtime LGm/j;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    iget-object p0, p0, LP6/Q;->a:LIb/k;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, LIb/k;->t:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, LIb/k;->c:Lnc/i;

    if-eqz p0, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnc/i;->X(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSettingChanged(LP6/V0;)V
    .locals 3
    .annotation runtime LGm/j;
    .end annotation

    iget-boolean v0, p1, LP6/V0;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->m0:Z

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->p0:Landroid/os/Handler;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->w0:LP6/n0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, LP6/n0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0, p1}, LP6/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, LP6/n0;->run()V

    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->w0:LP6/n0;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v0, LP6/n0;

    const/4 v2, 0x1

    invoke-direct {v0, v2, p0, p1}, LP6/n0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->w0:LP6/n0;

    const-wide/16 p0, 0x1f4

    invoke-virtual {v1, v0, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSidePaneClosed(Lg9/a;)V
    .locals 0
    .annotation runtime LGm/j;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    invoke-virtual {p0}, LP6/Q;->e()V

    return-void
.end method

.method public onSnackBarRequestEvent(Lwh/c;)V
    .locals 0
    .annotation runtime LGm/j;
    .end annotation

    const/4 p0, 0x0

    throw p0
.end method

.method public final onStart()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    invoke-super {p0}, Landroidx/appcompat/app/o;->onStart()V

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0}, LP6/Q;->b()Lhf/a;

    move-result-object v2

    sget-object v3, Lhf/a;->x:Lhf/a;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iget-object v0, v0, LP6/Q;->a:LIb/k;

    if-nez v0, :cond_1

    move v0, v4

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, LIb/k;->p()Z

    move-result v0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {p0}, Lcom/samsung/shim/SemCompatBridge;->getOnBackInvokedDispatcher(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    const/4 v2, -0x2

    invoke-static {v0, v2, p0}, Lcom/samsung/shim/SemCompatBridge;->registerOnBackInvokedCallback(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_3

    :cond_3
    :goto_2
    invoke-static {p0}, Lcom/samsung/shim/SemCompatBridge;->getOnBackInvokedDispatcher(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v4, p0}, Lcom/samsung/shim/SemCompatBridge;->registerOnBackInvokedCallback(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    invoke-static {}, Ltf/a;->h()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    new-instance v0, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    invoke-static {p0}, Landroidx/window/layout/WindowInfoTracker;->getOrCreate(Landroid/content/Context;)Landroidx/window/layout/WindowInfoTracker;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;-><init>(Landroidx/window/layout/WindowInfoTracker;)V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->q0:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    new-instance v0, LP6/z0;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, LP6/z0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->r0:LP6/z0;

    new-instance v0, LP6/x0;

    invoke-direct {v0, v2}, LP6/x0;-><init>(I)V

    iget-object v2, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->q0:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    iget-object v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->r0:LP6/z0;

    invoke-virtual {v2, p0, v0, v3}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->addWindowLayoutInfoListener(Landroid/app/Activity;Ljava/util/concurrent/Executor;Lo1/a;)V

    :goto_4
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->k0:LS6/c;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const-string v2, "ProviderObservers"

    if-eqz p0, :cond_5

    iget-object v3, v0, LS6/c;->k:LYj/a;

    new-instance v4, LAh/j;

    const/4 v5, 0x6

    invoke-direct {v4, p0, v5}, LAh/j;-><init>(Landroid/content/Context;I)V

    new-instance v5, Ljk/b;

    const/4 v6, 0x2

    invoke-direct {v5, v4, v6}, Ljk/b;-><init>(Ljava/lang/Object;I)V

    sget-object v4, Lpk/e;->c:LVj/m;

    invoke-virtual {v5, v4}, LVj/n;->h(LVj/m;)Ljk/h;

    move-result-object v4

    invoke-static {}, LXj/b;->a()LXj/d;

    move-result-object v5

    invoke-virtual {v4, v5}, LVj/n;->d(LVj/m;)Ljk/h;

    move-result-object v4

    new-instance v5, LP9/i0;

    const/4 v6, 0x7

    invoke-direct {v5, v6, p0, v0}, LP9/i0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, LR7/m;

    const/16 v7, 0x9

    invoke-direct {v6, v5, v7}, LR7/m;-><init>(Ljava/lang/Object;I)V

    new-instance v5, Lek/f;

    sget-object v7, Lck/c;->e:Landroidx/lifecycle/O;

    invoke-direct {v5, v6, v7}, Lek/f;-><init>(Lak/c;Lak/c;)V

    invoke-virtual {v4, v5}, LVj/n;->f(LVj/p;)V

    invoke-virtual {v3, v5}, LYj/a;->a(LYj/b;)Z

    iget-object v3, v0, LS6/c;->r:LS6/b;

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.samsung.android.mobileservice.profileProvider/new_profile_single"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5, v1, v3}, Lcom/samsung/shim/SemCalendarBridge;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "content://com.samsung.android.mobileservice.profileProvider/new_profile_multi"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v4, v5, v1, v3}, Lcom/samsung/shim/SemCalendarBridge;->registerContentObserver(Landroid/content/ContentResolver;Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Exception on register profile provider observer : "

    invoke-static {v3, v1, v2}, LMe/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    :try_start_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.android.calendar.ACTION_CROSS_PROFILE_CALENDAR_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.knox.profilepolicy.intent.action.update"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.calendar.HOLIDAY_DATA_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, v0, LS6/c;->l:LFb/b;

    const/4 v3, 0x2

    invoke-static {p0, v0, v1, v3}, Lcom/samsung/shim/SemCompatBridge;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string p0, "Registered CrossProfileCalendarChanged receiver."

    invoke-static {v2, p0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Exception on registerCrossProfileCalendarChangedReceiver : "

    invoke-static {v0, p0, v2}, LMe/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    const-string p0, "Register observers on start"

    invoke-static {v2, p0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    return-void
.end method

.method public final onStop()V
    .locals 11

    invoke-super {p0}, LP6/c;->onStop()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onStop(), isFinishing = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainActivity"

    invoke-static {v1, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ltf/a;->h()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->q0:Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->r0:LP6/z0;

    invoke-virtual {v0, v1}, Landroidx/window/java/layout/WindowInfoTrackerCallbackAdapter;->removeWindowLayoutInfoListener(Lo1/a;)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->k0:LS6/c;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Unregister observers on stop"

    const-string v3, "ProviderObservers"

    invoke-static {v3, v2}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    const-string v0, "onStop - context is null."

    invoke-static {v3, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, v0, LS6/c;->q:LS6/b;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, v0, LS6/c;->r:LS6/b;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v2, v0, LS6/c;->l:LFb/b;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Exception on unregister observers and receivers : "

    invoke-static {v2, v1, v3}, LMe/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, v0, LS6/c;->k:LYj/a;

    invoke-virtual {v0}, LYj/a;->f()V

    :goto_2
    sget-boolean v0, Lm9/T;->a:Z

    iget-object v1, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->M:LP6/Q;

    if-eqz v0, :cond_2

    invoke-virtual {v1}, LP6/Q;->b()Lhf/a;

    move-result-object v0

    invoke-static {v0}, Lhf/a;->c(Lhf/a;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->s0:Lg9/b;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lg9/b;->g()V

    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    const-string v3, "EventCountLogger"

    if-gez v0, :cond_3

    const-string v0, "No logging before 20 mins after booting"

    invoke-static {v3, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const-wide/16 v4, -0x1

    const-string v0, "closed_preferences_last_event_count_logging_time"

    invoke-static {p0, v0, v4, v5}, Ln2/l;->F(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    sget-object v8, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    cmp-long v4, v4, v8

    if-gez v4, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {p0, v0, v6, v7}, Ln2/l;->L(Landroid/content/Context;Ljava/lang/String;J)V

    new-instance v0, LP6/h0;

    const/4 v4, 0x0

    invoke-direct {v0, p0, v4}, LP6/h0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    new-instance v4, Ljk/b;

    const/4 v5, 0x2

    invoke-direct {v4, v0, v5}, Ljk/b;-><init>(Ljava/lang/Object;I)V

    sget-object v0, Lpk/e;->c:LVj/m;

    invoke-virtual {v4, v0}, LVj/n;->h(LVj/m;)Ljk/h;

    move-result-object v0

    invoke-static {}, LXj/b;->a()LXj/d;

    move-result-object v4

    invoke-virtual {v0, v4}, LVj/n;->d(LVj/m;)Ljk/h;

    move-result-object v0

    new-instance v4, LJ9/p;

    const/16 v5, 0x18

    invoke-direct {v4, v5}, LJ9/p;-><init>(I)V

    new-instance v5, Ljk/i;

    invoke-direct {v5, v0, v4, v2}, Ljk/i;-><init>(LVj/n;Lak/f;Ljava/lang/Object;)V

    invoke-virtual {v5}, LVj/n;->e()Lek/f;

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Llg/a;->y(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    iget-object v0, v1, LP6/Q;->a:LIb/k;

    if-eqz v0, :cond_5

    iget-object v0, v0, LIb/k;->d:Lsc/c;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lsc/c;->c:LIl/v;

    invoke-virtual {v0}, LIl/v;->H()V

    :cond_5
    :goto_4
    const-string v0, "Event count P1 : "

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "Previous_day_event_count_over"

    const/4 v6, -0x1

    invoke-static {v0, v5, v6}, LRf/j;->H(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", P7 : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "Previous_week_event_count_over"

    invoke-static {v0, v5, v6}, LRf/j;->H(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", P14 : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "Previous_2_weeks_event_count_over"

    invoke-static {v0, v5, v6}, LRf/j;->H(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", P30 : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "Previous_30_days_event_count_over"

    invoke-static {v0, v5, v6}, LRf/j;->H(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", S Share : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "Total_event_in_Share_calendar"

    invoke-static {v0, v5, v6}, LRf/j;->H(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", G Share : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "total_event_in_google_share"

    invoke-static {v0, v5, v6}, LRf/j;->H(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    const-string v4, "Failed to print event count, "

    invoke-static {v0, v4, v3}, LMe/a;->q(Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, LP6/Q;->a(Z)V

    :cond_6
    :try_start_3
    invoke-static {p0}, Lcom/samsung/shim/SemCompatBridge;->getOnBackInvokedDispatcher(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/samsung/shim/SemCompatBridge;->unregisterOnBackInvokedCallback(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    sput-object v2, LRf/i;->h:Ljava/lang/Boolean;

    sput-object v2, LRf/i;->i:Ljava/lang/Boolean;

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 4

    new-instance v0, LP6/r0;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, LP6/r0;-><init>(Lcom/samsung/android/app/calendar/activity/MainActivity;I)V

    const-wide/16 v1, 0x64

    iget-object v3, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->p0:Landroid/os/Handler;

    invoke-virtual {v3, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0}, Ld/j;->onUserLeaveHint()V

    return-void
.end method

.method public onWrongViewWidthReported(LE9/a;)V
    .locals 4
    .annotation runtime LGm/j;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/calendar/activity/MainActivity;->s0:Lg9/b;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "TwoPaneController"

    const-string v0, "resetViewWeight()"

    invoke-static {p1, v0}, LYd/d;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lg9/b;->n:Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    const-string v1, "leftPane"

    if-eqz p1, :cond_4

    :try_start_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object v2, p0, Lg9/b;->q:Lcom/samsung/android/app/calendar/view/TwoPaneLayout;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v2, v3

    cmpl-float p1, p1, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    sput-boolean p1, LR5/c;->e:Z

    iget-object p1, p0, Lg9/b;->n:Landroid/view/View;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "getContext(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/j;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, p1}, Lg9/b;->c(Landroid/content/Context;Landroid/view/View;)V

    iget-object p0, p0, Lg9/b;->n:Landroid/view/View;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    goto :goto_1

    :cond_1
    invoke-static {v1}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v0

    :cond_3
    const-string p0, "container"

    invoke-static {p0}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {v1}, Lkotlin/jvm/internal/j;->l(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_1
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
