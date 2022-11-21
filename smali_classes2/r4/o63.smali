.class public final Lr4/o63;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lr4/o63;


# instance fields
.field public volatile a:Ljava/lang/Thread;

.field public volatile b:Lr4/o63;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lr4/o63;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/o63;-><init>(Z)V

    sput-object v0, Lr4/o63;->c:Lr4/o63;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lr4/p63;->l()Lr4/c63;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lr4/c63;->a(Lr4/o63;Ljava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
