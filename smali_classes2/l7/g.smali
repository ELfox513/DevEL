.class public final synthetic Ll7/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls5/h;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ll7/h$a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ll7/h$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll7/g;->a:Ljava/lang/String;

    iput-object p2, p0, Ll7/g;->b:Ll7/h$a;

    return-void
.end method


# virtual methods
.method public final a(Ls5/e;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ll7/g;->a:Ljava/lang/String;

    iget-object v1, p0, Ll7/g;->b:Ll7/h$a;

    invoke-static {v0, v1, p1}, Ll7/h;->a(Ljava/lang/String;Ll7/h$a;Ls5/e;)Ll7/f;

    move-result-object p1

    return-object p1
.end method
