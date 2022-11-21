.class public abstract Lr4/x14;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lr4/d14;


# direct methods
.method public constructor <init>(Lr4/d14;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/x14;->a:Lr4/d14;

    return-void
.end method


# virtual methods
.method public abstract a(Lr4/xb;)Z
.end method

.method public abstract b(Lr4/xb;J)Z
.end method

.method public final c(Lr4/xb;J)Z
    .locals 1

    invoke-virtual {p0, p1}, Lr4/x14;->a(Lr4/xb;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lr4/x14;->b(Lr4/xb;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
