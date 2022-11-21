.class public final Lr4/cu0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lr4/im0;

.field public b:Landroid/content/Context;

.field public c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lr4/cu0;)Lr4/im0;
    .locals 0

    iget-object p0, p0, Lr4/cu0;->a:Lr4/im0;

    return-object p0
.end method

.method public static synthetic b(Lr4/cu0;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lr4/cu0;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic c(Lr4/cu0;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lr4/cu0;->c:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final d(Lr4/im0;)Lr4/cu0;
    .locals 0

    iput-object p1, p0, Lr4/cu0;->a:Lr4/im0;

    return-object p0
.end method

.method public final e(Landroid/content/Context;)Lr4/cu0;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lr4/cu0;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lr4/cu0;->b:Landroid/content/Context;

    return-object p0
.end method
