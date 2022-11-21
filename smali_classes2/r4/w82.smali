.class public final synthetic Lr4/w82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nl2;


# instance fields
.field public final a:Lr4/lt;


# direct methods
.method public constructor <init>(Lr4/lt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/w82;->a:Lr4/lt;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr4/w82;->a:Lr4/lt;

    check-cast p1, Lr4/iv;

    iget v0, v0, Lr4/lt;->a:I

    invoke-interface {p1, v0}, Lr4/iv;->D(I)V

    return-void
.end method
