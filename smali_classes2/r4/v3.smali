.class public final synthetic Lr4/v3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/ab;


# instance fields
.field public final a:Lr4/o6;

.field public final b:Lr4/k54;


# direct methods
.method public constructor <init>(Lr4/o6;Lr4/k54;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/v3;->a:Lr4/o6;

    iput-object p2, p0, Lr4/v3;->b:Lr4/k54;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lr4/v3;->a:Lr4/o6;

    iget-object v1, p0, Lr4/v3;->b:Lr4/k54;

    check-cast p1, Lr4/u6;

    iget-object v0, v0, Lr4/o6;->h:Lr4/j44;

    invoke-interface {p1, v0, v1}, Lr4/u6;->O0(Lr4/j44;Lr4/k54;)V

    return-void
.end method
