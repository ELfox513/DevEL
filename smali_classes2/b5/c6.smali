.class public final synthetic Lb5/c6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb5/a6;


# instance fields
.field public final synthetic a:Lb5/e6;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lb5/e6;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb5/c6;->a:Lb5/e6;

    iput-object p2, p0, Lb5/c6;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lb5/c6;->a:Lb5/e6;

    iget-object v1, p0, Lb5/c6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lb5/e6;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
