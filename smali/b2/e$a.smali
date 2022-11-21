.class public Lb2/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb2/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:I

.field public b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lb2/e$a;->a:I

    iput p2, p0, Lb2/e$a;->b:I

    iput-object p3, p0, Lb2/e$a;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0, p2}, Lb2/e$a;-><init>(IILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lb2/e$a;->b:I

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lb2/e$a;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lb2/e$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lb2/e$a;->b:I

    return-void
.end method

.method public e(I)V
    .locals 2

    iget v0, p0, Lb2/e$a;->b:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iput p1, p0, Lb2/e$a;->b:I

    :cond_0
    return-void
.end method
