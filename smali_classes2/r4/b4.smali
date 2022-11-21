.class public final synthetic Lr4/b4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ab;


# instance fields
.field public final a:Lr4/o6;


# direct methods
.method public constructor <init>(Lr4/o6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/b4;->a:Lr4/o6;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lr4/b4;->a:Lr4/o6;

    check-cast p1, Lr4/u6;

    iget v0, v0, Lr4/o6;->m:I

    invoke-interface {p1, v0}, Lr4/u6;->J0(I)V

    return-void
.end method
