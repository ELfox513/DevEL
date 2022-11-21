.class public final Lr4/e61;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lr4/e61;

.field public static final d:Lr4/gf0;

.field public static final e:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/e61;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:[Lr4/gf0;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    new-instance v8, Lr4/e61;

    const/4 v9, 0x0

    new-array v2, v9, [Lr4/gf0;

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lr4/e61;-><init>(Ljava/lang/Object;[Lr4/gf0;JJI)V

    sput-object v8, Lr4/e61;->c:Lr4/e61;

    new-instance v0, Lr4/gf0;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lr4/gf0;-><init>(J)V

    invoke-virtual {v0, v9}, Lr4/gf0;->b(I)Lr4/gf0;

    move-result-object v0

    sput-object v0, Lr4/e61;->d:Lr4/gf0;

    sget-object v0, Lr4/a;->a:Lr4/d3;

    sput-object v0, Lr4/e61;->e:Lr4/d3;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[Lr4/gf0;JJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p3, 0x0

    iput-wide p3, p0, Lr4/e61;->a:J

    iput-object p2, p0, Lr4/e61;->b:[Lr4/gf0;

    return-void
.end method


# virtual methods
.method public final a(I)Lr4/gf0;
    .locals 1

    if-gez p1, :cond_0

    sget-object p1, Lr4/e61;->d:Lr4/gf0;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lr4/e61;->b:[Lr4/gf0;

    aget-object p1, v0, p1

    :goto_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lr4/e61;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lr4/e61;

    const/4 v2, 0x0

    invoke-static {v2, v2}, Lr4/lc;->H(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lr4/e61;->b:[Lr4/gf0;

    iget-object p1, p1, Lr4/e61;->b:[Lr4/gf0;

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    long-to-int v1, v0

    mul-int/lit16 v1, v1, 0x3c1

    iget-object v0, p0, Lr4/e61;->b:[Lr4/gf0;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdPlaybackState(adsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adResumePositionUs=0, adGroups=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "])"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
