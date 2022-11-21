.class public final Lk1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk1/e$a;,
        Lk1/e$b;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:[S

.field public final f:[Lk1/e$b;

.field public final g:[Lk1/e$a;


# direct methods
.method public constructor <init>(IIII[S[Lk1/e$b;[Lk1/e$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lk1/e;->a:I

    iput p2, p0, Lk1/e;->b:I

    iput p3, p0, Lk1/e;->c:I

    iput p4, p0, Lk1/e;->d:I

    iput-object p5, p0, Lk1/e;->e:[S

    iput-object p6, p0, Lk1/e;->f:[Lk1/e$b;

    iput-object p7, p0, Lk1/e;->g:[Lk1/e$a;

    return-void
.end method


# virtual methods
.method public a()[Lk1/e$a;
    .locals 1

    iget-object v0, p0, Lk1/e;->g:[Lk1/e$a;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lk1/e;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lk1/e;->b:I

    return v0
.end method

.method public d()[S
    .locals 1

    iget-object v0, p0, Lk1/e;->e:[S

    return-object v0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lk1/e;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lk1/e;->a:I

    return v0
.end method

.method public g()[Lk1/e$b;
    .locals 1

    iget-object v0, p0, Lk1/e;->f:[Lk1/e$b;

    return-object v0
.end method
