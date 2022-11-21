.class public final Lr4/f63;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Lr4/f63;


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public final b:Ljava/util/concurrent/Executor;

.field public c:Lr4/f63;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/f63;

    invoke-direct {v0}, Lr4/f63;-><init>()V

    sput-object v0, Lr4/f63;->d:Lr4/f63;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lr4/f63;->a:Ljava/lang/Runnable;

    iput-object v0, p0, Lr4/f63;->b:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/f63;->a:Ljava/lang/Runnable;

    iput-object p2, p0, Lr4/f63;->b:Ljava/util/concurrent/Executor;

    return-void
.end method
