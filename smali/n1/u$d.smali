.class public Ln1/u$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public a:Ly1/c;

.field public b:I


# direct methods
.method public constructor <init>(Ly1/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln1/u$d;->a:Ly1/c;

    iput p2, p0, Ln1/u$d;->b:I

    return-void
.end method


# virtual methods
.method public a()Ly1/c;
    .locals 1

    iget-object v0, p0, Ln1/u$d;->a:Ly1/c;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Ln1/u$d;->b:I

    return v0
.end method
