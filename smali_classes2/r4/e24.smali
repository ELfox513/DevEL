.class public final Lr4/e24;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/d04;


# instance fields
.field public final a:J

.field public final b:Lr4/d04;


# direct methods
.method public constructor <init>(JLr4/d04;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lr4/e24;->a:J

    iput-object p3, p0, Lr4/e24;->b:Lr4/d04;

    return-void
.end method

.method public static synthetic a(Lr4/e24;)J
    .locals 2

    iget-wide v0, p0, Lr4/e24;->a:J

    return-wide v0
.end method


# virtual methods
.method public final j(Lr4/z04;)V
    .locals 2

    iget-object v0, p0, Lr4/e24;->b:Lr4/d04;

    new-instance v1, Lr4/d24;

    invoke-direct {v1, p0, p1}, Lr4/d24;-><init>(Lr4/e24;Lr4/z04;)V

    invoke-interface {v0, v1}, Lr4/d04;->j(Lr4/z04;)V

    return-void
.end method

.method public final r(II)Lr4/d14;
    .locals 1

    iget-object v0, p0, Lr4/e24;->b:Lr4/d04;

    invoke-interface {v0, p1, p2}, Lr4/d04;->r(II)Lr4/d14;

    move-result-object p1

    return-object p1
.end method

.method public final y()V
    .locals 1

    iget-object v0, p0, Lr4/e24;->b:Lr4/d04;

    invoke-interface {v0}, Lr4/d04;->y()V

    return-void
.end method
