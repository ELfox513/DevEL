.class public final synthetic Lr4/r31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# instance fields
.field public final a:Lr4/t73;


# direct methods
.method public constructor <init>(Lr4/t73;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr4/r31;->a:Lr4/t73;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 1

    iget-object v0, p0, Lr4/r31;->a:Lr4/t73;

    check-cast p1, Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lr4/t73;->a(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lr4/y73;->a(Ljava/lang/Object;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
