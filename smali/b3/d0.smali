.class public abstract Lb3/d0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public volatile b:Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lb3/a;

    invoke-direct {v0, p0}, Lb3/a;-><init>(Lb3/d0;)V

    iput-object v0, p0, Lb3/d0;->a:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic b(Lb3/d0;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    iput-object p1, p0, Lb3/d0;->b:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public abstract a()V
.end method

.method public c()Lr4/h83;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr4/h83<",
            "*>;"
        }
    .end annotation

    sget-object v0, Lr4/qm0;->a:Lr4/i83;

    iget-object v1, p0, Lb3/d0;->a:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Lr4/i83;->d(Ljava/lang/Runnable;)Lr4/h83;

    move-result-object v0

    return-object v0
.end method
