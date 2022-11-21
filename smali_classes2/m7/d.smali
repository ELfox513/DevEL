.class public final synthetic Lm7/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/a;


# instance fields
.field public final synthetic a:Lm7/e;


# direct methods
.method public synthetic constructor <init>(Lm7/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/d;->a:Lm7/e;

    return-void
.end method


# virtual methods
.method public final a(Lj5/i;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lm7/d;->a:Lm7/e;

    invoke-static {v0, p1}, Lm7/e;->d(Lm7/e;Lj5/i;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
