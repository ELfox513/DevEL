.class public final Lr4/wn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:I


# direct methods
.method public constructor <init>(JLjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lr4/wn;->a:J

    iput-object p3, p0, Lr4/wn;->b:Ljava/lang/String;

    iput p4, p0, Lr4/wn;->c:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Lr4/wn;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Lr4/wn;

    iget-wide v1, p1, Lr4/wn;->a:J

    iget-wide v3, p0, Lr4/wn;->a:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    iget p1, p1, Lr4/wn;->c:I

    iget v1, p0, Lr4/wn;->c:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 2

    iget-wide v0, p0, Lr4/wn;->a:J

    long-to-int v1, v0

    return v1
.end method
