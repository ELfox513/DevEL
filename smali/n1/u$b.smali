.class public Ln1/u$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw1/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln1/u;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lb2/j;

.field public final synthetic b:Ln1/u;


# direct methods
.method public constructor <init>(Ln1/u;Lb2/j;)V
    .locals 0

    iput-object p1, p0, Ln1/u$b;->b:Ln1/u;

    iput-object p2, p0, Ln1/u$b;->a:Lb2/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lw1/b;)V
    .locals 1

    iget-object v0, p0, Ln1/u$b;->a:Lb2/j;

    invoke-virtual {p1}, Lw1/b;->a()I

    move-result p1

    invoke-virtual {v0, p1}, Lb2/j;->x(I)V

    return-void
.end method
