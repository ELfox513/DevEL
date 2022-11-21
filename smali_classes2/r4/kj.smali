.class public final Lr4/kj;
.super Lr4/td;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/Object;


# instance fields
.field public final b:J

.field public final c:J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lr4/kj;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(JZ)V
    .locals 0

    invoke-direct {p0}, Lr4/td;-><init>()V

    iput-wide p1, p0, Lr4/kj;->b:J

    iput-wide p1, p0, Lr4/kj;->c:J

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b(ILr4/sd;ZJ)Lr4/sd;
    .locals 0

    const/4 p3, 0x0

    const/4 p4, 0x1

    invoke-static {p1, p3, p4}, Lr4/vk;->c(III)I

    iget-wide p3, p0, Lr4/kj;->c:J

    iput-wide p3, p2, Lr4/sd;->a:J

    return-object p2
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d(ILr4/rd;Z)Lr4/rd;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lr4/vk;->c(III)I

    if-eqz p3, :cond_0

    sget-object p1, Lr4/kj;->d:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-wide v0, p0, Lr4/kj;->b:J

    iput-object p1, p2, Lr4/rd;->a:Ljava/lang/Object;

    iput-object p1, p2, Lr4/rd;->b:Ljava/lang/Object;

    iput-wide v0, p2, Lr4/rd;->c:J

    return-object p2
.end method

.method public final e(Ljava/lang/Object;)I
    .locals 1

    sget-object v0, Lr4/kj;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
