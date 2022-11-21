.class public final Lr4/wd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/l7;


# instance fields
.field public final a:Lr4/gl;

.field public b:Lr4/ho;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lr4/gl;

    invoke-direct {v0}, Lr4/gl;-><init>()V

    iput-object v0, p0, Lr4/wd;->a:Lr4/gl;

    const/16 v0, 0x1f40

    iput v0, p0, Lr4/wd;->d:I

    iput v0, p0, Lr4/wd;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Lr4/wd;
    .locals 0

    iput-object p1, p0, Lr4/wd;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final b(I)Lr4/wd;
    .locals 0

    iput p1, p0, Lr4/wd;->d:I

    return-object p0
.end method

.method public final c(I)Lr4/wd;
    .locals 0

    iput p1, p0, Lr4/wd;->e:I

    return-object p0
.end method

.method public final d(Z)Lr4/wd;
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lr4/wd;->f:Z

    return-object p0
.end method

.method public final e(Lr4/ho;)Lr4/wd;
    .locals 0

    iput-object p1, p0, Lr4/wd;->b:Lr4/ho;

    return-object p0
.end method

.method public final f()Lr4/bg;
    .locals 10

    new-instance v9, Lr4/bg;

    iget-object v1, p0, Lr4/wd;->c:Ljava/lang/String;

    iget v2, p0, Lr4/wd;->d:I

    iget v3, p0, Lr4/wd;->e:I

    iget-boolean v4, p0, Lr4/wd;->f:Z

    iget-object v5, p0, Lr4/wd;->a:Lr4/gl;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lr4/bg;-><init>(Ljava/lang/String;IIZLr4/gl;Lr4/a13;ZLr4/af;)V

    iget-object v0, p0, Lr4/wd;->b:Lr4/ho;

    if-eqz v0, :cond_0

    invoke-virtual {v9, v0}, Lr4/j5;->c(Lr4/ho;)V

    :cond_0
    return-object v9
.end method

.method public final bridge synthetic zza()Lr4/o8;
    .locals 1

    invoke-virtual {p0}, Lr4/wd;->f()Lr4/bg;

    move-result-object v0

    return-object v0
.end method
