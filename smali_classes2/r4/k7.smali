.class public final Lr4/k7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lr4/k7;

.field public static final d:Lr4/k7;

.field public static final e:Lr4/k7;

.field public static final f:Lr4/k7;

.field public static final g:Lr4/k7;


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lr4/k7;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lr4/k7;-><init>(JJ)V

    sput-object v0, Lr4/k7;->c:Lr4/k7;

    new-instance v3, Lr4/k7;

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v3, v4, v5, v4, v5}, Lr4/k7;-><init>(JJ)V

    sput-object v3, Lr4/k7;->d:Lr4/k7;

    new-instance v3, Lr4/k7;

    invoke-direct {v3, v4, v5, v1, v2}, Lr4/k7;-><init>(JJ)V

    sput-object v3, Lr4/k7;->e:Lr4/k7;

    new-instance v3, Lr4/k7;

    invoke-direct {v3, v1, v2, v4, v5}, Lr4/k7;-><init>(JJ)V

    sput-object v3, Lr4/k7;->f:Lr4/k7;

    sput-object v0, Lr4/k7;->g:Lr4/k7;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-ltz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lr4/ja;->a(Z)V

    cmp-long v4, p3, v2

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lr4/ja;->a(Z)V

    iput-wide p1, p0, Lr4/k7;->a:J

    iput-wide p3, p0, Lr4/k7;->b:J

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lr4/k7;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lr4/k7;

    iget-wide v2, p0, Lr4/k7;->a:J

    iget-wide v4, p1, Lr4/k7;->a:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_2

    iget-wide v2, p0, Lr4/k7;->b:J

    iget-wide v4, p1, Lr4/k7;->b:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 4

    iget-wide v0, p0, Lr4/k7;->a:J

    long-to-int v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-wide v2, p0, Lr4/k7;->b:J

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method
