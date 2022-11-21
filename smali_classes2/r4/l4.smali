.class public final synthetic Lr4/l4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ab;


# instance fields
.field public final a:I

.field public final b:Lr4/z6;

.field public final c:Lr4/z6;


# direct methods
.method public constructor <init>(ILr4/z6;Lr4/z6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lr4/l4;->a:I

    iput-object p2, p0, Lr4/l4;->b:Lr4/z6;

    iput-object p3, p0, Lr4/l4;->c:Lr4/z6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 3

    iget v0, p0, Lr4/l4;->a:I

    iget-object v1, p0, Lr4/l4;->b:Lr4/z6;

    iget-object v2, p0, Lr4/l4;->c:Lr4/z6;

    check-cast p1, Lr4/u6;

    invoke-interface {p1, v1, v2, v0}, Lr4/u6;->E0(Lr4/z6;Lr4/z6;I)V

    return-void
.end method
