.class public Lr4/y04;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/z04;


# instance fields
.field public final a:J

.field public final b:Lr4/x04;


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lr4/y04;->a:J

    new-instance p1, Lr4/x04;

    const-wide/16 v0, 0x0

    cmp-long p2, p3, v0

    if-nez p2, :cond_0

    sget-object p2, Lr4/a14;->c:Lr4/a14;

    goto :goto_0

    :cond_0
    new-instance p2, Lr4/a14;

    invoke-direct {p2, v0, v1, p3, p4}, Lr4/a14;-><init>(JJ)V

    :goto_0
    invoke-direct {p1, p2, p2}, Lr4/x04;-><init>(Lr4/a14;Lr4/a14;)V

    iput-object p1, p0, Lr4/y04;->b:Lr4/x04;

    return-void
.end method


# virtual methods
.method public final a(J)Lr4/x04;
    .locals 0

    iget-object p1, p0, Lr4/y04;->b:Lr4/x04;

    return-object p1
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()J
    .locals 2

    iget-wide v0, p0, Lr4/y04;->a:J

    return-wide v0
.end method
