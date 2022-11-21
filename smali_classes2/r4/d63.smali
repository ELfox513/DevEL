.class public final Lr4/d63;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lr4/d63;

.field public static final d:Lr4/d63;


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lr4/p63;->k()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sput-object v1, Lr4/d63;->d:Lr4/d63;

    sput-object v1, Lr4/d63;->c:Lr4/d63;

    return-void

    :cond_0
    new-instance v0, Lr4/d63;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lr4/d63;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lr4/d63;->d:Lr4/d63;

    new-instance v0, Lr4/d63;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lr4/d63;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lr4/d63;->c:Lr4/d63;

    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lr4/d63;->a:Z

    iput-object p2, p0, Lr4/d63;->b:Ljava/lang/Throwable;

    return-void
.end method
