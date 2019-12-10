.class public interface abstract Landroid/app/IOpIconPackHelper;
.super Ljava/lang/Object;
.source "IOpIconPackHelper.java"


# virtual methods
.method public abstract getDrawableFromPackagename(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract loadIconPack(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation
.end method

.method public abstract setContext(Landroid/content/Context;)V
.end method
