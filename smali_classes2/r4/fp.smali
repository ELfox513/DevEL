.class public final Lr4/fp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/io/InputStream;

.field public final b:Z

.field public final c:Z

.field public final d:J

.field public final e:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;ZZJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/fp;->a:Ljava/io/InputStream;

    iput-boolean p2, p0, Lr4/fp;->b:Z

    iput-boolean p3, p0, Lr4/fp;->c:Z

    iput-wide p4, p0, Lr4/fp;->d:J

    iput-boolean p6, p0, Lr4/fp;->e:Z

    return-void
.end method

.method public static a(Ljava/io/InputStream;ZZJZ)Lr4/fp;
    .locals 8

    new-instance v7, Lr4/fp;

    move-object v0, v7

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lr4/fp;-><init>(Ljava/io/InputStream;ZZJZ)V

    return-object v7
.end method


# virtual methods
.method public final b()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lr4/fp;->a:Ljava/io/InputStream;

    return-object v0
.end method

.method public final c()Z
    .locals 1

    iget-boolean v0, p0, Lr4/fp;->b:Z

    return v0
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lr4/fp;->c:Z

    return v0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lr4/fp;->d:J

    return-wide v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lr4/fp;->e:Z

    return v0
.end method
