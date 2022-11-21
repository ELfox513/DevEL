.class public final Lr4/wg0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Lr4/vg0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lr4/wg0;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public static synthetic a(Lr4/wg0;)Ljava/util/WeakHashMap;
    .locals 0

    iget-object p0, p0, Lr4/wg0;->a:Ljava/util/WeakHashMap;

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/content/Context;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Lr4/tg0;",
            ">;"
        }
    .end annotation

    sget-object v0, Lr4/qm0;->a:Lr4/i83;

    new-instance v1, Lr4/ug0;

    invoke-direct {v1, p0, p1}, Lr4/ug0;-><init>(Lr4/wg0;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lr4/i83;->c(Ljava/util/concurrent/Callable;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
