.class public final synthetic Lr4/p82;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/nl2;


# instance fields
.field public final a:Lr4/au;


# direct methods
.method public constructor <init>(Lr4/au;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/p82;->a:Lr4/au;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr4/p82;->a:Lr4/au;

    check-cast p1, Lr4/ex;

    invoke-interface {p1, v0}, Lr4/ex;->v5(Lr4/au;)V

    return-void
.end method
