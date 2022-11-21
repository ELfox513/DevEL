.class public final synthetic La3/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/qt0;


# instance fields
.field public final a:La3/n;


# direct methods
.method public constructor <init>(La3/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La3/f;->a:La3/n;

    return-void
.end method


# virtual methods
.method public final R(Z)V
    .locals 0

    iget-object p1, p0, La3/f;->a:La3/n;

    iget-object p1, p1, La3/n;->d:Lr4/cs0;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lr4/cs0;->k0()V

    :cond_0
    return-void
.end method
