.class public final Lr4/n5;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final f:Lr4/d3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lr4/d3<",
            "Lr4/n5;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:J

.field public final c:Z

.field public final d:Z

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lr4/m5;->a:Lr4/d3;

    sput-object v0, Lr4/n5;->f:Lr4/d3;

    return-void
.end method

.method public synthetic constructor <init>(JJZZZLr4/s5;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lr4/n5;->a:J

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lr4/n5;->b:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lr4/n5;->c:Z

    iput-boolean p1, p0, Lr4/n5;->d:Z

    iput-boolean p1, p0, Lr4/n5;->e:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lr4/n5;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lr4/n5;

    iget-wide v1, p1, Lr4/n5;->a:J

    return v0
.end method

.method public final hashCode()I
    .locals 2

    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    long-to-int v1, v0

    mul-int/lit16 v1, v1, 0x745f

    return v1
.end method
