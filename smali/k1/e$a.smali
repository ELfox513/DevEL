.class public Lk1/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:[I

.field public final b:[I

.field public final c:I

.field public final d:I


# direct methods
.method public constructor <init>([I[III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk1/e$a;->a:[I

    iput-object p2, p0, Lk1/e$a;->b:[I

    iput p3, p0, Lk1/e$a;->c:I

    iput p4, p0, Lk1/e$a;->d:I

    return-void
.end method


# virtual methods
.method public a()[I
    .locals 1

    iget-object v0, p0, Lk1/e$a;->b:[I

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lk1/e$a;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lk1/e$a;->d:I

    return v0
.end method

.method public d()[I
    .locals 1

    iget-object v0, p0, Lk1/e$a;->a:[I

    return-object v0
.end method
