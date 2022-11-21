.class public Ln1/i$b;
.super Ln1/i$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public b:Lx1/a;

.field public c:I

.field public d:I

.field public final synthetic e:Ln1/i;


# direct methods
.method public constructor <init>(Ln1/i;)V
    .locals 0

    iput-object p1, p0, Ln1/i$b;->e:Ln1/i;

    invoke-direct {p0}, Ln1/i$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIIILy1/c;I)V
    .locals 0

    invoke-virtual {p0}, Ln1/i$b;->j()V

    return-void
.end method

.method public b(IIILy1/c;)V
    .locals 0

    invoke-virtual {p0}, Ln1/i$b;->j()V

    return-void
.end method

.method public c(IILx1/e0;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lx1/e0;",
            "Ljava/util/ArrayList<",
            "Lx1/a;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ln1/i$b;->j()V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public e(IIII)V
    .locals 0

    invoke-virtual {p0}, Ln1/i$b;->j()V

    return-void
.end method

.method public f(I)V
    .locals 0

    return-void
.end method

.method public g(IIILn1/y;I)V
    .locals 0

    invoke-virtual {p0}, Ln1/i$b;->j()V

    return-void
.end method

.method public h(III)V
    .locals 0

    invoke-virtual {p0}, Ln1/i$b;->j()V

    return-void
.end method

.method public i(IIILx1/a;I)V
    .locals 0

    iput-object p4, p0, Ln1/i$b;->b:Lx1/a;

    iput p3, p0, Ln1/i$b;->c:I

    iput p5, p0, Ln1/i$b;->d:I

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ln1/i$b;->c:I

    return-void
.end method
