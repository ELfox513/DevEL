.class public final enum Ln0/e$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Ln0/e$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Ln0/e$c;

.field public static final enum b:Ln0/e$c;

.field public static final enum d:Ln0/e$c;

.field public static final synthetic k:[Ln0/e$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    new-instance v0, Ln0/e$c;

    const-string v1, "AUTOMATIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ln0/e$c;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ln0/e$c;->a:Ln0/e$c;

    new-instance v1, Ln0/e$c;

    const-string v3, "TRUNCATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ln0/e$c;-><init>(Ljava/lang/String;I)V

    sput-object v1, Ln0/e$c;->b:Ln0/e$c;

    new-instance v3, Ln0/e$c;

    const-string v5, "WRITE_AHEAD_LOGGING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ln0/e$c;-><init>(Ljava/lang/String;I)V

    sput-object v3, Ln0/e$c;->d:Ln0/e$c;

    const/4 v5, 0x3

    new-array v5, v5, [Ln0/e$c;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Ln0/e$c;->k:[Ln0/e$c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static c(Landroid/app/ActivityManager;)Z
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Ln0/f;->a(Landroid/app/ActivityManager;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Ln0/e$c;
    .locals 1

    const-class v0, Ln0/e$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Ln0/e$c;

    return-object p0
.end method

.method public static values()[Ln0/e$c;
    .locals 1

    sget-object v0, Ln0/e$c;->k:[Ln0/e$c;

    invoke-virtual {v0}, [Ln0/e$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ln0/e$c;

    return-object v0
.end method


# virtual methods
.method public d(Landroid/content/Context;)Ln0/e$c;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    sget-object v0, Ln0/e$c;->a:Ln0/e$c;

    if-eq p0, v0, :cond_0

    return-object p0

    :cond_0
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    if-eqz p1, :cond_1

    invoke-static {p1}, Ln0/e$c;->c(Landroid/app/ActivityManager;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Ln0/e$c;->d:Ln0/e$c;

    return-object p1

    :cond_1
    sget-object p1, Ln0/e$c;->b:Ln0/e$c;

    return-object p1
.end method
