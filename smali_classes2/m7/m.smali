.class public final synthetic Lm7/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc4/d;


# instance fields
.field public final synthetic a:Ln7/n;


# direct methods
.method public synthetic constructor <init>(Ln7/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/m;->a:Ln7/n;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lm7/m;->a:Ln7/n;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/google/firebase/remoteconfig/internal/a;

    invoke-virtual {v0, p1, p2}, Ln7/n;->a(Ljava/lang/String;Lcom/google/firebase/remoteconfig/internal/a;)V

    return-void
.end method
